.class public Lcom/android/server/am/AppDvfsAdapter;
.super Ljava/lang/Object;
.source "AppDvfsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AppDvfsAdapter$Minprofile;
    }
.end annotation


# instance fields
.field private final CLOSE_PROFILE:I

.field private final mHandler:Landroid/os/Handler;

.field private final mMinprofile:Lcom/android/server/am/AppDvfsAdapter$Minprofile;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/am/AppDvfsAdapter;->CLOSE_PROFILE:I

    new-instance v0, Lcom/android/server/am/AppDvfsAdapter$Minprofile;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppDvfsAdapter$Minprofile;-><init>(Lcom/android/server/am/AppDvfsAdapter;)V

    iput-object v0, p0, Lcom/android/server/am/AppDvfsAdapter;->mMinprofile:Lcom/android/server/am/AppDvfsAdapter$Minprofile;

    new-instance v0, Lcom/android/server/am/AppDvfsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/AppDvfsAdapter$1;-><init>(Lcom/android/server/am/AppDvfsAdapter;)V

    iput-object v0, p0, Lcom/android/server/am/AppDvfsAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/AppDvfsAdapter;)Lcom/android/server/am/AppDvfsAdapter$Minprofile;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AppDvfsAdapter;->mMinprofile:Lcom/android/server/am/AppDvfsAdapter$Minprofile;

    return-object v0
.end method


# virtual methods
.method public closeProfile()V
    .locals 4

    .prologue
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/android/server/am/AppDvfsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/AppDvfsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppDvfsAdapter;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public closeProfile(J)V
    .locals 3
    .parameter "delayMillis"

    .prologue
    const/4 v2, 0x2

    iget-object v1, p0, Lcom/android/server/am/AppDvfsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/AppDvfsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/AppDvfsAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public setProfile(II)V
    .locals 1
    .parameter "ddr"
    .parameter "cpu"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AppDvfsAdapter;->mMinprofile:Lcom/android/server/am/AppDvfsAdapter$Minprofile;

    invoke-virtual {v0}, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->pm_qos_open()V

    iget-object v0, p0, Lcom/android/server/am/AppDvfsAdapter;->mMinprofile:Lcom/android/server/am/AppDvfsAdapter$Minprofile;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->pm_qos_write_ddr(I)V

    iget-object v0, p0, Lcom/android/server/am/AppDvfsAdapter;->mMinprofile:Lcom/android/server/am/AppDvfsAdapter$Minprofile;

    invoke-virtual {v0, p2}, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->pm_qos_write(I)V

    return-void
.end method

.method public setProfile(III)V
    .locals 2
    .parameter "ddr"
    .parameter "cpu"
    .parameter "gpu"

    .prologue
    iget-object v0, p0, Lcom/android/server/am/AppDvfsAdapter;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/AppDvfsAdapter;->mMinprofile:Lcom/android/server/am/AppDvfsAdapter$Minprofile;

    invoke-virtual {v0}, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->pm_qos_open()V

    iget-object v0, p0, Lcom/android/server/am/AppDvfsAdapter;->mMinprofile:Lcom/android/server/am/AppDvfsAdapter$Minprofile;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->pm_qos_write_ddr(I)V

    iget-object v0, p0, Lcom/android/server/am/AppDvfsAdapter;->mMinprofile:Lcom/android/server/am/AppDvfsAdapter$Minprofile;

    invoke-virtual {v0, p2}, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->pm_qos_write(I)V

    iget-object v0, p0, Lcom/android/server/am/AppDvfsAdapter;->mMinprofile:Lcom/android/server/am/AppDvfsAdapter$Minprofile;

    invoke-virtual {v0, p3}, Lcom/android/server/am/AppDvfsAdapter$Minprofile;->pm_qos_write_gpu(I)V

    return-void
.end method
