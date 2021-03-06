.class public Lcom/android/internal/telephony/msim/MSimIccCardProxy;
.super Lcom/android/internal/telephony/IccCardProxy;
.source "MSimIccCardProxy.java"


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ICC_RECORD_EVENTS:I = 0x1f4

.field private static final EVENT_SUBSCRIPTION_ACTIVATED:I = 0x1f5

.field private static final EVENT_SUBSCRIPTION_DEACTIVATED:I = 0x1f6

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_MSimIccCardProxy"


# instance fields
.field private bHuaweiDSDA:Z

.field private mCardIndex:Ljava/lang/Integer;

.field private mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 4
    .parameter "context"
    .parameter "ci"
    .parameter "cardIndex"

    .prologue
    const/4 v3, 0x0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/IccCardProxy;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    .line 68
    iput-object v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    .line 69
    iput-object v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 72
    const-string v1, "ro.config.hw_dsda"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->bHuaweiDSDA:Z

    .line 79
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    .line 82
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 84
    .local v0, subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f5

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionActivatedOnSlot(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1f6

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->registerForSubscriptionDeactivatedOnSlot(ILandroid/os/Handler;ILjava/lang/Object;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->resetProperties()V

    .line 89
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->NOT_READY:Lcom/android/internal/telephony/IccCard$State;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCard$State;)V

    .line 90
    return-void
.end method

.method private onSubscriptionActivated()V
    .locals 3

    .prologue
    .line 175
    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v0

    .line 177
    .local v0, subMgr:Lcom/android/internal/telephony/msim/SubscriptionManager;
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getCurrentSubscriptionOnSlot(I)Lcom/android/internal/telephony/msim/Subscription;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 180
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "USIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-eq v1, v2, :cond_2

    .line 184
    const-string v1, "update App Family to 3GPP"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 185
    sget-object v1, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 199
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->bHuaweiDSDA:Z

    if-eqz v1, :cond_4

    .line 200
    const-string v1, "DSDA!, we didn\'t reset properities, because this event may be later after EVENT_RECORDS_LOADED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 206
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateIccAvailability()V

    .line 207
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateStateProperty()V

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->setOperatorPropAfterActivated()V

    .line 209
    return-void

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "RUIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget-object v1, v1, Lcom/android/internal/telephony/msim/Subscription;->appType:Ljava/lang/String;

    const-string v2, "CSIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v2, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-eq v1, v2, :cond_1

    .line 189
    const-string v1, "update App Family to 3GPP2"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 190
    sget-object v1, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    goto :goto_0

    .line 202
    :cond_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->resetProperties()V

    goto :goto_1
.end method

.method private onSubscriptionDeactivated()V
    .locals 2

    .prologue
    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    .line 215
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/IccRecords;->recordsRequested:Z

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->resetProperties()V

    .line 223
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateIccAvailability()V

    .line 224
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateStateProperty()V

    .line 225
    return-void
.end method

.method private updateStateProperty()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v0, :cond_0

    .line 298
    const-string v0, "gsm.sim.state"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 302
    :cond_0
    return-void
.end method


# virtual methods
.method public broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "value"
    .parameter "reason"

    .prologue
    .line 320
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    if-nez v2, :cond_0

    .line 321
    const-string v2, "broadcastIccStateChangedIntent: Card Index is not set; Return!!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->loge(Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 326
    .local v1, subId:I
    iget-boolean v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mQuietMode:Z

    if-eqz v2, :cond_1

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuietMode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 332
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string v2, "ss"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 338
    const-string v2, "reason"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 341
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for subscription : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 343
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/internal/telephony/IccCardProxy;->dispose()V

    .line 96
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->resetProperties()V

    .line 97
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 101
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 170
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccCardProxy;->handleMessage(Landroid/os/Message;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 103
    :sswitch_0
    const-string v5, "EVENT_SUBSCRIPTION_ACTIVATED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->onSubscriptionActivated()V

    goto :goto_0

    .line 108
    :sswitch_1
    const-string v5, "EVENT_SUBSCRIPTION_DEACTIVATED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 109
    invoke-direct {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->onSubscriptionDeactivated()V

    goto :goto_0

    .line 114
    :sswitch_2
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v6, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v6, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v5, v6, :cond_3

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v5, :cond_3

    .line 115
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .line 117
    .local v3, operator:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v4, v5, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 118
    .local v4, sub:I
    :cond_2
    if-eqz v3, :cond_4

    .line 120
    const-string v5, "gsm.sim.operator.numeric"

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6, v3}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 127
    :goto_1
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v6, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v5, v6, :cond_3

    .line 128
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v5, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    .line 129
    .local v1, countryCode:Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 131
    const-string v5, "gsm.sim.operator.iso-country"

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 142
    .end local v1           #countryCode:Ljava/lang/String;
    .end local v3           #operator:Ljava/lang/String;
    .end local v4           #sub:I
    :cond_3
    :goto_2
    const-string v5, "LOADED"

    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 124
    .restart local v3       #operator:Ljava/lang/String;
    .restart local v4       #sub:I
    :cond_4
    const-string v5, "EVENT_RECORDS_LOADED Operator name is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_1

    .line 136
    .restart local v1       #countryCode:Ljava/lang/String;
    :cond_5
    const-string v5, "EVENT_RECORDS_LOADED Country code is null"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->loge(Ljava/lang/String;)V

    goto :goto_2

    .line 147
    .end local v1           #countryCode:Ljava/lang/String;
    .end local v3           #operator:Ljava/lang/String;
    .end local v4           #sub:I
    :sswitch_3
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v6, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v6, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v5, v6, :cond_0

    :cond_6
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v5, :cond_0

    .line 148
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    iget v4, v5, Lcom/android/internal/telephony/msim/Subscription;->subId:I

    .line 149
    .restart local v4       #sub:I
    :cond_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 150
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v5, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 151
    .local v2, eventCode:I
    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    .line 153
    const-string v5, "gsm.sim.operator.alpha"

    iget-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v7}, Lcom/android/internal/telephony/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 163
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v2           #eventCode:I
    .end local v4           #sub:I
    :sswitch_4
    invoke-super {p0, p1}, Lcom/android/internal/telephony/IccCardProxy;->handleMessage(Landroid/os/Message;)V

    .line 164
    const-string v5, "RIL_MSimIccCardProxy"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mCardIndex == "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", setRadioOffState["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->setRadioOffState(IZ)V

    goto/16 :goto_0

    .line 101
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x7 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x1f5 -> :sswitch_0
        0x1f6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 379
    const-string v0, "RIL_MSimIccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CardIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 384
    const-string v0, "RIL_MSimIccCardProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CardIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    return-void
.end method

.method protected registerUiccCardEvents()V
    .locals 3

    .prologue
    .line 306
    invoke-super {p0}, Lcom/android/internal/telephony/IccCardProxy;->registerUiccCardEvents()V

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 310
    :cond_0
    return-void
.end method

.method resetProperties()V
    .locals 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mSubscriptionData:Lcom/android/internal/telephony/msim/Subscription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v1, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v0, v1, :cond_0

    .line 285
    const-string v0, "gsm.sim.operator.numeric"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 287
    const-string v0, "gsm.sim.operator.iso-country"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 289
    const-string v0, "gsm.sim.operator.alpha"

    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 293
    :cond_0
    return-void
.end method

.method protected setExternalState(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 4
    .parameter "newState"

    .prologue
    .line 348
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    if-nez v1, :cond_1

    .line 349
    const-string v1, "setExternalState: Card Index is not set; Return!!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->loge(Ljava/lang/String;)V

    .line 375
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    if-eq p1, v1, :cond_0

    .line 356
    iput-object p1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCard$State;

    .line 357
    const-string v1, "gsm.sim.state"

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/IccCard$State;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 364
    const/4 v0, 0x0

    .line 366
    .local v0, notBroadcast:Z
    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->DEACTIVED:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, p1, :cond_2

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getInstance()Lcom/android/internal/telephony/msim/SubscriptionManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/msim/SubscriptionManager;->getUserPrefSubStatus(I)Z

    move-result v2

    if-ne v1, v2, :cond_2

    .line 367
    const/4 v0, 0x1

    .line 371
    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mInitialized:Z

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 372
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->broadcastCurrentState()V

    goto :goto_0
.end method

.method setOperatorPropAfterActivated()V
    .locals 5

    .prologue
    .line 389
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v2, v3, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v2, :cond_2

    .line 390
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    .line 391
    .local v1, operator:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 392
    const-string v2, "gsm.sim.operator.numeric"

    iget-object v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2, v3, v1}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 396
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    sget-object v3, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v2, v3, :cond_2

    .line 397
    iget-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    check-cast v2, Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/SIMRecords;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, countryCode:Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 399
    const-string v2, "gsm.sim.operator.iso-country"

    iget-object v3, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/telephony/MSimTelephonyManager;->setTelephonyProperty(Ljava/lang/String;ILjava/lang/String;)V

    .line 405
    .end local v0           #countryCode:Ljava/lang/String;
    .end local v1           #operator:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected unregisterUiccCardEvents()V
    .locals 1

    .prologue
    .line 314
    invoke-super {p0}, Lcom/android/internal/telephony/IccCardProxy;->unregisterUiccCardEvents()V

    .line 315
    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 316
    :cond_0
    return-void
.end method

.method protected updateIccAvailability()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 229
    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccManager:Lcom/android/internal/telephony/UiccManager;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCardIndex:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/UiccManager;->getUiccCard(I)Lcom/android/internal/telephony/UiccCard;

    move-result-object v1

    .line 230
    .local v1, newCard:Lcom/android/internal/telephony/UiccCard;
    sget-object v3, Lcom/android/internal/telephony/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/IccCardStatus$CardState;

    .line 231
    .local v3, state:Lcom/android/internal/telephony/IccCardStatus$CardState;
    const/4 v0, 0x0

    .line 232
    .local v0, newApp:Lcom/android/internal/telephony/UiccCardApplication;
    const/4 v2, 0x0

    .line 233
    .local v2, newRecords:Lcom/android/internal/telephony/IccRecords;
    if-eqz v1, :cond_4

    .line 234
    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCardState()Lcom/android/internal/telephony/IccCardStatus$CardState;

    move-result-object v3

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Card State = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 238
    const/4 v4, 0x1

    iget-boolean v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->IS_CHINA_TELECOM:Z

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP2:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iget-object v5, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    if-ne v4, v5, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getCdmaSubscriptionAppIndex()I

    move-result v4

    if-gez v4, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/UiccCard;->getGsmUmtsSubscriptionAppIndex()I

    move-result v4

    if-ltz v4, :cond_0

    .line 242
    sget-object v4, Lcom/android/internal/telephony/UiccManager$AppFamily;->APP_FAM_3GPP:Lcom/android/internal/telephony/UiccManager$AppFamily;

    iput-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    .line 246
    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mCurrentAppType:Lcom/android/internal/telephony/UiccManager$AppFamily;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/UiccCard;->getApplication(Lcom/android/internal/telephony/UiccManager$AppFamily;)Lcom/android/internal/telephony/UiccCardApplication;

    move-result-object v0

    .line 247
    if-eqz v0, :cond_1

    .line 248
    invoke-virtual {v0}, Lcom/android/internal/telephony/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/IccRecords;

    move-result-object v2

    .line 254
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    if-ne v4, v2, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    if-ne v4, v0, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    if-eq v4, v1, :cond_3

    .line 255
    :cond_2
    const-string v4, "Icc changed. Reregestering."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->unregisterUiccCardEvents()V

    .line 257
    iput-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 258
    iput-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 259
    iput-object v6, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 261
    if-eqz v2, :cond_5

    .line 262
    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 263
    iput-object v0, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/UiccCardApplication;

    .line 264
    iput-object v2, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mIccRecords:Lcom/android/internal/telephony/IccRecords;

    .line 265
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->registerUiccCardEvents()V

    .line 267
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateActiveRecord()V

    .line 278
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->updateExternalState()V

    .line 279
    return-void

    .line 251
    :cond_4
    const-string v4, "No card available"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_5
    if-eqz v1, :cond_3

    if-nez v0, :cond_3

    .line 272
    iput-object v1, p0, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->mUiccCard:Lcom/android/internal/telephony/UiccCard;

    .line 273
    invoke-virtual {p0}, Lcom/android/internal/telephony/msim/MSimIccCardProxy;->registerUiccCardEvents()V

    goto :goto_1
.end method
