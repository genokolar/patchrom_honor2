.class public Lcom/huawei/permission/SmsPermission;
.super Ljava/lang/Object;
.source "SmsPermission.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsPermission"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "c"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    return-void
.end method

.method private sendFakeIntent(Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "PI"

    .prologue
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/app/PendingIntent$CanceledException;
    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    goto :goto_0
.end method

.method private sendFakeIntents(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v0, 0x0

    .local v0, i:I
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    invoke-direct {p0, v1}, Lcom/huawei/permission/SmsPermission;->sendFakeIntent(Landroid/app/PendingIntent;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public isSmsBlocked(Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Z
    .locals 7
    .parameter "destAddr"
    .parameter "smsBody"
    .parameter "sentIntent"

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x20

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, uid:I
    iget-object v5, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/huawei/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v2, p1}, Lcom/huawei/permission/StubController;->remind(Landroid/content/Context;IILjava/lang/String;)I

    move-result v1

    .local v1, remindResult:I
    const/4 v5, -0x1

    if-ne v5, v1, :cond_2

    const-string v4, "SmsPermission"

    const-string v5, "remind error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v5, v6, v2}, Lcom/huawei/permission/StubController;->getPermission(Landroid/content/Context;II)I

    move-result v0

    .local v0, permissionOp:I
    if-ne v4, v1, :cond_3

    iget-object v5, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v6, v0, p1}, Lcom/huawei/permission/StubController;->notifyAlert(Landroid/content/Context;IIILjava/lang/String;)V

    :cond_3
    const/4 v5, 0x2

    if-ne v5, v0, :cond_0

    invoke-direct {p0, p3}, Lcom/huawei/permission/SmsPermission;->sendFakeIntent(Landroid/app/PendingIntent;)V

    move v3, v4

    goto :goto_0
.end method

.method public isSmsBlocked(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z
    .locals 8
    .parameter "destAddr"
    .parameter "smsBody"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p3, sentIntents:Ljava/util/List;,"Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v4, 0x1

    const/16 v7, 0x20

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .local v2, uid:I
    iget-object v5, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v5, v2}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v5, v7}, Lcom/huawei/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-static {v5, v7, v2, v6}, Lcom/huawei/permission/StubController;->remind(Landroid/content/Context;IILjava/lang/String;)I

    move-result v1

    .local v1, remindResult:I
    const/4 v5, -0x1

    if-ne v5, v1, :cond_2

    const-string v4, "SmsPermission"

    const-string v5, "remind error"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v2}, Lcom/huawei/permission/StubController;->getPermission(Landroid/content/Context;II)I

    move-result v0

    .local v0, permissionOp:I
    if-ne v4, v1, :cond_3

    iget-object v5, p0, Lcom/huawei/permission/SmsPermission;->mContext:Landroid/content/Context;

    invoke-static {v5, v2, v7, v0, p1}, Lcom/huawei/permission/StubController;->notifyAlert(Landroid/content/Context;IIILjava/lang/String;)V

    :cond_3
    const/4 v5, 0x2

    if-ne v5, v0, :cond_0

    invoke-direct {p0, p3}, Lcom/huawei/permission/SmsPermission;->sendFakeIntents(Ljava/util/List;)V

    move v3, v4

    goto :goto_0
.end method
