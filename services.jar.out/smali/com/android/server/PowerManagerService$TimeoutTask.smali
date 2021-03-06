.class Lcom/android/server/PowerManagerService$TimeoutTask;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeoutTask"
.end annotation


# instance fields
.field nextState:I

.field remainingTimeoutOverride:J

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/PowerManagerService;Lcom/android/server/PowerManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/PowerManagerService$TimeoutTask;-><init>(Lcom/android/server/PowerManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$700(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    const-string v0, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "user activity timeout timed out nextState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    #setter for: Lcom/android/server/PowerManagerService;->mUserState:I
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$4902(Lcom/android/server/PowerManagerService;I)I

    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    iget-object v4, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mWakeLockState:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$5000(Lcom/android/server/PowerManagerService;)I

    move-result v4

    or-int/2addr v3, v4

    #calls: Lcom/android/server/PowerManagerService;->setPowerState(I)V
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$5100(Lcom/android/server/PowerManagerService;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .local v1, now:J
    iget v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->nextState:I

    sparse-switch v0, :sswitch_data_0

    :goto_1
    monitor-exit v6

    goto :goto_0

    .end local v1           #now:J
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .restart local v1       #now:J
    :sswitch_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonBrightOffDelay:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mMMITestStart:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/PowerManagerService;->mButtonBrightOffFlag:Z
    invoke-static {v0, v3}, Lcom/android/server/PowerManagerService;->access$5502(Lcom/android/server/PowerManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x3

    #calls: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$5600(Lcom/android/server/PowerManagerService;JJI)V

    goto :goto_1

    :cond_1
    :sswitch_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDimDelay:I
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5700(Lcom/android/server/PowerManagerService;)I

    move-result v0

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x1

    #calls: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$5600(Lcom/android/server/PowerManagerService;JJI)V

    goto :goto_1

    :cond_2
    :sswitch_2
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x0

    #calls: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$5600(Lcom/android/server/PowerManagerService;JJI)V

    goto :goto_1

    :sswitch_3
    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mButtonLight:Lcom/android/server/LightsService$Light;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;)Lcom/android/server/LightsService$Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LightsService$Light;->turnOff()V

    iget-object v0, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->this$0:Lcom/android/server/PowerManagerService;

    iget-wide v3, p0, Lcom/android/server/PowerManagerService$TimeoutTask;->remainingTimeoutOverride:J

    const/4 v5, 0x3

    #calls: Lcom/android/server/PowerManagerService;->setTimeoutLocked(JJI)V
    invoke-static/range {v0 .. v5}, Lcom/android/server/PowerManagerService;->access$5600(Lcom/android/server/PowerManagerService;JJI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_1
        0x7 -> :sswitch_0
        0x27 -> :sswitch_3
    .end sparse-switch
.end method
