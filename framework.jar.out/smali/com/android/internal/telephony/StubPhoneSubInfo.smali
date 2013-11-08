.class public Lcom/android/internal/telephony/StubPhoneSubInfo;
.super Lcom/android/internal/telephony/PhoneSubInfoProxy;
.source "StubPhoneSubInfo.java"


# static fields
.field private static final PERMISSION_DENIED:Ljava/lang/String; = "000000"

.field private static final TAG:Ljava/lang/String; = "StubPhoneSubInfo"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/PhoneSubInfo;)V
    .locals 1
    .parameter "context"
    .parameter "phoneSubInfo"

    .prologue
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/PhoneSubInfoProxy;-><init>(Lcom/android/internal/telephony/PhoneSubInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/StubPhoneSubInfo;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/internal/telephony/StubPhoneSubInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isReadPhoneNumberBlocked()Z
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .local v0, uid:I
    iget-object v2, p0, Lcom/android/internal/telephony/StubPhoneSubInfo;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/StubPhoneSubInfo;->mContext:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/huawei/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/internal/telephony/StubPhoneSubInfo;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v5, v0, v4}, Lcom/huawei/permission/StubController;->remind(Landroid/content/Context;IILjava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/internal/telephony/StubPhoneSubInfo;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0}, Lcom/huawei/permission/StubController;->getPermission(Landroid/content/Context;II)I

    move-result v3

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/StubPhoneSubInfo;->isReadPhoneNumberBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "000000"

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneSubInfoProxy;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
