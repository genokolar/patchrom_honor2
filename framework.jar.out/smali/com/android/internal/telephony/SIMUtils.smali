.class public Lcom/android/internal/telephony/SIMUtils;
.super Ljava/lang/Object;
.source "SIMUtils.java"


# static fields
.field private static final IS_VMN_SHORT_CODE_INDEX:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "SIMUtils"

.field private static final NAME_INDEX:I = 0x1

.field private static final NUMERIC_INDEX:I = 0x2

.field private static final NUM_MATCH_INDEX:I = 0x3

.field private static final NUM_MATCH_SHORT_INDEX:I = 0x4

.field private static final SMS_7BIT_ENABLED_INDEX:I = 0x5

.field private static final SMS_CODING_NATIONAL_INDEX:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private arrayContains([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "array"
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public checkGlobalAutoMatchParam(Ljava/lang/String;Landroid/content/Context;)V
    .locals 18
    .parameter "currentImsi"
    .parameter "context"

    .prologue
    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->isVirtualNet()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/VirtualNet;->getCurrentVirtualNet()Lcom/android/internal/telephony/VirtualNet;

    move-result-object v17

    .local v17, virtualNet:Lcom/android/internal/telephony/VirtualNet;
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getNumMatch()I

    move-result v1

    if-ltz v1, :cond_0

    const-string v1, "gsm.hw.matchnum"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getNumMatch()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getNumMatchShort()I

    move-result v1

    if-ltz v1, :cond_1

    const-string v1, "gsm.hw.matchnum.short"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getNumMatchShort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getSms7BitEnabled()I

    move-result v1

    if-ltz v1, :cond_2

    const-string v1, "gsm.sms.7bit.enabled"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getSms7BitEnabled()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getSmsCodingNational()I

    move-result v1

    if-ltz v1, :cond_3

    const-string v1, "gsm.sms.coding.national"

    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/VirtualNet;->getSmsCodingNational()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v1, "SIMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "virtual net: after setprop numMatch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.hw.matchnum"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", numMatchShort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.hw.matchnum.short"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sms7BitEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isSms7BitEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", smsCodingNational = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.sms.coding.national"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .local v16, temp:[I
    const-string v1, "ro.config.smsCoding_National"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    const-string v2, "ro.config.smsCoding_National"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v16, v1

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/GsmAlphabet;->setEnabledSingleShiftTables([I)V

    .end local v16           #temp:[I
    .end local v17           #virtualNet:Lcom/android/internal/telephony/VirtualNet;
    :cond_4
    :goto_0
    return-void

    .restart local v16       #temp:[I
    .restart local v17       #virtualNet:Lcom/android/internal/telephony/VirtualNet;
    :cond_5
    const-string v1, "gsm.sms.coding.national"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const-string v2, "gsm.sms.coding.national"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v16, v1

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/GsmAlphabet;->setEnabledSingleShiftTables([I)V

    goto :goto_0

    .end local v16           #temp:[I
    .end local v17           #virtualNet:Lcom/android/internal/telephony/VirtualNet;
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "numeric=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, where:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$NumMatchs;->CONTENT_URI:Landroid/net/Uri;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "name"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "numeric"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "num_match"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "num_match_short"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "sms_7bit_enabled"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "sms_coding_national"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "is_vmn_short_code"

    aput-object v6, v3, v5

    const/4 v5, 0x0

    const-string v6, "name ASC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_7

    const-string v1, "SIMUtils"

    const-string v2, "SIMRecords:checkGlobalAutoMatchParam: No matched auto match params in db."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x1

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, name:Ljava/lang/String;
    const/4 v1, 0x2

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .local v13, numeric:Ljava/lang/String;
    const/4 v1, 0x3

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .local v11, numMatch:I
    const/4 v1, 0x4

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .local v12, numMatchShort:I
    const/4 v1, 0x5

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .local v14, sms7BitEnabled:I
    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .local v15, smsCodingNational:I
    const/4 v1, 0x7

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .local v9, is_vmn_short_code:I
    if-nez v12, :cond_8

    move v12, v11

    :cond_8
    const-string v1, "gsm.hw.matchnum"

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gsm.hw.matchnum.short"

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gsm.sms.7bit.enabled"

    invoke-static {v14}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gsm.sms.coding.national"

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gsm.hw.matchnum.vmn_shortcode"

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SIMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords:checkGlobalAutoMatchParam: after setprop numMatch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.hw.matchnum"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", numMatchShort = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.hw.matchnum.short"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", sms7BitEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->isSms7BitEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", smsCodingNational = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "gsm.sms.coding.national"

    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .end local v9           #is_vmn_short_code:I
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #numMatch:I
    .end local v12           #numMatchShort:I
    .end local v13           #numeric:Ljava/lang/String;
    .end local v14           #sms7BitEnabled:I
    .end local v15           #smsCodingNational:I
    :catch_0
    move-exception v8

    .local v8, ex:Ljava/lang/Exception;
    :try_start_1
    const-string v1, "SIMUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIMRecords:checkGlobalAutoMatchParam: global version cause exception!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v8           #ex:Ljava/lang/Exception;
    :cond_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    const/4 v1, 0x1

    new-array v0, v1, [I

    move-object/from16 v16, v0

    .restart local v16       #temp:[I
    const-string v1, "ro.config.smsCoding_National"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_a

    const/4 v1, 0x0

    const-string v2, "ro.config.smsCoding_National"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v16, v1

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/GsmAlphabet;->setEnabledSingleShiftTables([I)V

    goto/16 :goto_0

    .end local v16           #temp:[I
    :catchall_0
    move-exception v1

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v1

    .restart local v16       #temp:[I
    :cond_a
    const-string v1, "gsm.sms.coding.national"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const-string v2, "gsm.sms.coding.national"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    aput v2, v16, v1

    invoke-static/range {v16 .. v16}, Lcom/android/internal/telephony/GsmAlphabet;->setEnabledSingleShiftTables([I)V

    goto/16 :goto_0
.end method

.method public checkGlobalEccNum(Ljava/lang/String;Landroid/content/Context;)V
    .locals 8
    .parameter "currentMccmnc"
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .local v1, custEccNumsStr:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, custEccNumsItems:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, custNumItem:[Ljava/lang/String;
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "global_cust_ecc_nums"

    invoke-static {v5, v6}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, ";"

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    aget-object v5, v0, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    array-length v6, v2

    if-ne v5, v6, :cond_2

    aget-object v5, v2, v7

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, v2, v7

    const/4 v6, 0x3

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    :try_start_1
    const-string v5, "gsm.hw.cust.ecclist"

    const/4 v6, 0x1

    aget-object v6, v2, v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4           #i:I
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/Exception;
    const-string v5, "SIMUtils"

    const-string v6, "Could not load default locales"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v3           #e:Ljava/lang/Exception;
    .restart local v4       #i:I
    :catch_1
    move-exception v3

    .restart local v3       #e:Ljava/lang/Exception;
    const-string v5, "SIMUtils"

    const-string v6, "Failed to save ril.ecclist to system property"

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public checkPrePostPay(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 9
    .parameter "currentMccmnc"
    .parameter "currentImsi"
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .local v5, prepay_postpay_mccmncs:[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, prepay_postpay_mccmncs_strings:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, old_imsi_string:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "prepay_postpay_mccmncs"

    invoke-static {v7, v8}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    :try_start_1
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "old_imsi"

    invoke-static {v7, v8}, Landroid/provider/SettingsEx$Systemex;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    :goto_0
    const/4 v2, 0x0

    .local v2, isContainer:Z
    const/4 v3, 0x1

    .local v3, isEqual:Z
    if-eqz v6, :cond_0

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/SIMUtils;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_1
    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "old_imsi"

    invoke-static {v7, v8, p2}, Landroid/provider/SettingsEx$Systemex;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    if-eqz v2, :cond_0

    if-nez v3, :cond_0

    const-string v7, "SIMUtils"

    const-string v8, "broadcast TelephonyIntents.ACTION_PRE_POST_PAY"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v7, "android.intent.action.ACTION_PRE_POST_PAY"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const/high16 v7, 0x2000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v7, "prePostPayState"

    const/4 v8, 0x1

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v7, 0x0

    invoke-static {v1, v7}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #isContainer:Z
    .end local v3           #isEqual:Z
    :cond_0
    :goto_2
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v7, "SIMUtils"

    const-string v8, "Could not load default locales"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .restart local v0       #e:Ljava/lang/Exception;
    const-string v7, "SIMUtils"

    const-string v8, "Could not load default locales"

    invoke-static {v7, v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v2       #isContainer:Z
    .restart local v3       #isEqual:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method
