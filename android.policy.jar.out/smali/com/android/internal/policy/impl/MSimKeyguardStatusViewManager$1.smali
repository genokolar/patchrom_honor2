.class Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;
.super Ljava/lang/Object;
.source "MSimKeyguardStatusViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method public onDevicePolicyManagerStateChanged()V
    .locals 0

    .prologue
    return-void
.end method

.method public onDeviceProvisioned()V
    .locals 0

    .prologue
    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 1
    .parameter "phoneState"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iput p1, v0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mPhoneState:I

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->updateEmergencyCallButtonState(I)V

    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 4
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iput-boolean p1, v1, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mShowingBatteryInfo:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iput-boolean p2, v1, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mPluggedIn:Z

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iput p3, v1, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mBatteryLevel:I

    new-instance v0, Llibcore/util/MutableInt;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llibcore/util/MutableInt;-><init>(I)V

    .local v0, tmpIcon:Llibcore/util/MutableInt;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    const/16 v2, 0xf

    iget-object v3, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->getAltTextMessage(Llibcore/util/MutableInt;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->update(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V
    .locals 2
    .parameter "plmn"
    .parameter "spn"
    .parameter "subscription"

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimPlmn:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->access$000(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;

    move-result-object v0

    aput-object p1, v0, p3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimSpn:[Ljava/lang/CharSequence;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->access$100(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Ljava/lang/CharSequence;

    move-result-object v0

    aput-object p2, v0, p3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    #getter for: Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->mMSimState:[Lcom/android/internal/telephony/IccCard$State;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->access$200(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;)[Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    aget-object v1, v1, p3

    #calls: Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->updateCarrierStateWithSimStatus(Lcom/android/internal/telephony/IccCard$State;I)V
    invoke-static {v0, v1, p3}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->access$300(Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;Lcom/android/internal/telephony/IccCard$State;I)V

    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager$1;->this$0:Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MSimKeyguardStatusViewManager;->refreshDate()V

    return-void
.end method

.method public onUserChanged(I)V
    .locals 0
    .parameter "userId"

    .prologue
    return-void
.end method
