.class Lcom/android/server/HWDrmDialogsService$1;
.super Ljava/lang/Object;
.source "HWDrmDialogsService.java"

# interfaces
.implements Landroid/drm/DrmManagerClient$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HWDrmDialogsService;->CreateDrmErrorListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/HWDrmDialogsService;


# direct methods
.method constructor <init>(Lcom/android/server/HWDrmDialogsService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/HWDrmDialogsService$1;->this$0:Lcom/android/server/HWDrmDialogsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/drm/DrmManagerClient;Landroid/drm/DrmErrorEvent;)V
    .locals 4
    .parameter "client"
    .parameter "event"

    .prologue
    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getMessage()Ljava/lang/String;

    move-result-object v0

    .local v0, errStr:Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    const-string v1, "HWDrmDialogsService"

    const-string v2, "HWDrmDialogsService  start ........"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "HWDrmDialogsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "errStr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x7d2

    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v2

    if-ne v1, v2, :cond_2

    const-string v1, "HWDrmDialogsService"

    const-string v2, "cdNoRights ........"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "showdialog#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/HWDrmDialogsService$1;->this$0:Lcom/android/server/HWDrmDialogsService;

    const/4 v2, 0x0

    #calls: Lcom/android/server/HWDrmDialogsService;->showDlg(I)V
    invoke-static {v1, v2}, Lcom/android/server/HWDrmDialogsService;->access$000(Lcom/android/server/HWDrmDialogsService;I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v1, 0x7d1

    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v2

    if-ne v1, v2, :cond_3

    const-string v1, "HWDrmDialogsService"

    const-string v2, "rightIssuer error ........"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "showdialog#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/HWDrmDialogsService$1;->this$0:Lcom/android/server/HWDrmDialogsService;

    const-string v2, "showdialog#"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/server/HWDrmDialogsService;->access$102(Lcom/android/server/HWDrmDialogsService;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "HWDrmDialogsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rightIssuer error : rightIssuer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/HWDrmDialogsService$1;->this$0:Lcom/android/server/HWDrmDialogsService;

    #getter for: Lcom/android/server/HWDrmDialogsService;->mRightsIssuer:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/HWDrmDialogsService;->access$100(Lcom/android/server/HWDrmDialogsService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/HWDrmDialogsService$1;->this$0:Lcom/android/server/HWDrmDialogsService;

    const/4 v2, 0x1

    #calls: Lcom/android/server/HWDrmDialogsService;->showDlg(I)V
    invoke-static {v1, v2}, Lcom/android/server/HWDrmDialogsService;->access$000(Lcom/android/server/HWDrmDialogsService;I)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x7d5

    invoke-virtual {p2}, Landroid/drm/DrmErrorEvent;->getType()I

    move-result v2

    if-ne v1, v2, :cond_1

    const-string v1, "showdialog#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/HWDrmDialogsService$1;->this$0:Lcom/android/server/HWDrmDialogsService;

    const/4 v2, 0x2

    #calls: Lcom/android/server/HWDrmDialogsService;->showDlg(I)V
    invoke-static {v1, v2}, Lcom/android/server/HWDrmDialogsService;->access$000(Lcom/android/server/HWDrmDialogsService;I)V

    goto :goto_0
.end method
