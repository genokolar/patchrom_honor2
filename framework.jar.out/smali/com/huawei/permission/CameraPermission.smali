.class public Lcom/huawei/permission/CameraPermission;
.super Ljava/lang/Object;
.source "CameraPermission.java"


# static fields
.field private static final MAX_CAPUTURE_SPY_PREVIEW_HEIGHT:I = 0x14

.field private static final MAX_CAPUTURE_SPY_PREVIEW_WIDTH:I = 0x14

.field private static final TAG:Ljava/lang/String; = "CameraPermission"

.field private static final mData:[C


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsCaptureSpy:Z

.field private mIsFirstTimeRemind:Z

.field private mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0x3b3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/huawei/permission/CameraPermission;->mData:[C

    return-void

    :array_0
    .array-data 0x2
        0xfft 0x0t
        0xd8t 0x0t
        0xfft 0x0t
        0xe0t 0x0t
        0x0t 0x0t
        0x10t 0x0t
        0x4at 0x0t
        0x46t 0x0t
        0x49t 0x0t
        0x46t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x0t 0x0t
        0x60t 0x0t
        0x0t 0x0t
        0x60t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0xfft 0x0t
        0xdbt 0x0t
        0x0t 0x0t
        0x43t 0x0t
        0x0t 0x0t
        0x2t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x5t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x6t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x3t 0x0t
        0x5t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xbt 0x0t
        0x9t 0x0t
        0x8t 0x0t
        0x8t 0x0t
        0xat 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x7t 0x0t
        0xat 0x0t
        0xdt 0x0t
        0xat 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0x7t 0x0t
        0x9t 0x0t
        0xet 0x0t
        0xft 0x0t
        0xdt 0x0t
        0xct 0x0t
        0xet 0x0t
        0xbt 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xfft 0x0t
        0xdbt 0x0t
        0x0t 0x0t
        0x43t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x6t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x6t 0x0t
        0xct 0x0t
        0x8t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xct 0x0t
        0xfft 0x0t
        0xc0t 0x0t
        0x0t 0x0t
        0x11t 0x0t
        0x8t 0x0t
        0x0t 0x0t
        0x78t 0x0t
        0x0t 0x0t
        0xa0t 0x0t
        0x3t 0x0t
        0x1t 0x0t
        0x22t 0x0t
        0x0t 0x0t
        0x2t 0x0t
        0x11t 0x0t
        0x1t 0x0t
        0x3t 0x0t
        0x11t 0x0t
        0x1t 0x0t
        0xfft 0x0t
        0xc4t 0x0t
        0x0t 0x0t
        0x1ft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x5t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xfft 0x0t
        0xc4t 0x0t
        0x0t 0x0t
        0xb5t 0x0t
        0x10t 0x0t
        0x0t 0x0t
        0x2t 0x0t
        0x1t 0x0t
        0x3t 0x0t
        0x3t 0x0t
        0x2t 0x0t
        0x4t 0x0t
        0x3t 0x0t
        0x5t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x7dt 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x0t 0x0t
        0x4t 0x0t
        0x11t 0x0t
        0x5t 0x0t
        0x12t 0x0t
        0x21t 0x0t
        0x31t 0x0t
        0x41t 0x0t
        0x6t 0x0t
        0x13t 0x0t
        0x51t 0x0t
        0x61t 0x0t
        0x7t 0x0t
        0x22t 0x0t
        0x71t 0x0t
        0x14t 0x0t
        0x32t 0x0t
        0x81t 0x0t
        0x91t 0x0t
        0xa1t 0x0t
        0x8t 0x0t
        0x23t 0x0t
        0x42t 0x0t
        0xb1t 0x0t
        0xc1t 0x0t
        0x15t 0x0t
        0x52t 0x0t
        0xd1t 0x0t
        0xf0t 0x0t
        0x24t 0x0t
        0x33t 0x0t
        0x62t 0x0t
        0x72t 0x0t
        0x82t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0x16t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x19t 0x0t
        0x1at 0x0t
        0x25t 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x3at 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x83t 0x0t
        0x84t 0x0t
        0x85t 0x0t
        0x86t 0x0t
        0x87t 0x0t
        0x88t 0x0t
        0x89t 0x0t
        0x8at 0x0t
        0x92t 0x0t
        0x93t 0x0t
        0x94t 0x0t
        0x95t 0x0t
        0x96t 0x0t
        0x97t 0x0t
        0x98t 0x0t
        0x99t 0x0t
        0x9at 0x0t
        0xa2t 0x0t
        0xa3t 0x0t
        0xa4t 0x0t
        0xa5t 0x0t
        0xa6t 0x0t
        0xa7t 0x0t
        0xa8t 0x0t
        0xa9t 0x0t
        0xaat 0x0t
        0xb2t 0x0t
        0xb3t 0x0t
        0xb4t 0x0t
        0xb5t 0x0t
        0xb6t 0x0t
        0xb7t 0x0t
        0xb8t 0x0t
        0xb9t 0x0t
        0xbat 0x0t
        0xc2t 0x0t
        0xc3t 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc6t 0x0t
        0xc7t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xcat 0x0t
        0xd2t 0x0t
        0xd3t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd7t 0x0t
        0xd8t 0x0t
        0xd9t 0x0t
        0xdat 0x0t
        0xe1t 0x0t
        0xe2t 0x0t
        0xe3t 0x0t
        0xe4t 0x0t
        0xe5t 0x0t
        0xe6t 0x0t
        0xe7t 0x0t
        0xe8t 0x0t
        0xe9t 0x0t
        0xeat 0x0t
        0xf1t 0x0t
        0xf2t 0x0t
        0xf3t 0x0t
        0xf4t 0x0t
        0xf5t 0x0t
        0xf6t 0x0t
        0xf7t 0x0t
        0xf8t 0x0t
        0xf9t 0x0t
        0xfat 0x0t
        0xfft 0x0t
        0xc4t 0x0t
        0x0t 0x0t
        0x1ft 0x0t
        0x1t 0x0t
        0x0t 0x0t
        0x3t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x1t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x6t 0x0t
        0x7t 0x0t
        0x8t 0x0t
        0x9t 0x0t
        0xat 0x0t
        0xbt 0x0t
        0xfft 0x0t
        0xc4t 0x0t
        0x0t 0x0t
        0xb5t 0x0t
        0x11t 0x0t
        0x0t 0x0t
        0x2t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x3t 0x0t
        0x4t 0x0t
        0x7t 0x0t
        0x5t 0x0t
        0x4t 0x0t
        0x4t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x77t 0x0t
        0x0t 0x0t
        0x1t 0x0t
        0x2t 0x0t
        0x3t 0x0t
        0x11t 0x0t
        0x4t 0x0t
        0x5t 0x0t
        0x21t 0x0t
        0x31t 0x0t
        0x6t 0x0t
        0x12t 0x0t
        0x41t 0x0t
        0x51t 0x0t
        0x7t 0x0t
        0x61t 0x0t
        0x71t 0x0t
        0x13t 0x0t
        0x22t 0x0t
        0x32t 0x0t
        0x81t 0x0t
        0x8t 0x0t
        0x14t 0x0t
        0x42t 0x0t
        0x91t 0x0t
        0xa1t 0x0t
        0xb1t 0x0t
        0xc1t 0x0t
        0x9t 0x0t
        0x23t 0x0t
        0x33t 0x0t
        0x52t 0x0t
        0xf0t 0x0t
        0x15t 0x0t
        0x62t 0x0t
        0x72t 0x0t
        0xd1t 0x0t
        0xat 0x0t
        0x16t 0x0t
        0x24t 0x0t
        0x34t 0x0t
        0xe1t 0x0t
        0x25t 0x0t
        0xf1t 0x0t
        0x17t 0x0t
        0x18t 0x0t
        0x19t 0x0t
        0x1at 0x0t
        0x26t 0x0t
        0x27t 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2at 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x3at 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
        0x47t 0x0t
        0x48t 0x0t
        0x49t 0x0t
        0x4at 0x0t
        0x53t 0x0t
        0x54t 0x0t
        0x55t 0x0t
        0x56t 0x0t
        0x57t 0x0t
        0x58t 0x0t
        0x59t 0x0t
        0x5at 0x0t
        0x63t 0x0t
        0x64t 0x0t
        0x65t 0x0t
        0x66t 0x0t
        0x67t 0x0t
        0x68t 0x0t
        0x69t 0x0t
        0x6at 0x0t
        0x73t 0x0t
        0x74t 0x0t
        0x75t 0x0t
        0x76t 0x0t
        0x77t 0x0t
        0x78t 0x0t
        0x79t 0x0t
        0x7at 0x0t
        0x82t 0x0t
        0x83t 0x0t
        0x84t 0x0t
        0x85t 0x0t
        0x86t 0x0t
        0x87t 0x0t
        0x88t 0x0t
        0x89t 0x0t
        0x8at 0x0t
        0x92t 0x0t
        0x93t 0x0t
        0x94t 0x0t
        0x95t 0x0t
        0x96t 0x0t
        0x97t 0x0t
        0x98t 0x0t
        0x99t 0x0t
        0x9at 0x0t
        0xa2t 0x0t
        0xa3t 0x0t
        0xa4t 0x0t
        0xa5t 0x0t
        0xa6t 0x0t
        0xa7t 0x0t
        0xa8t 0x0t
        0xa9t 0x0t
        0xaat 0x0t
        0xb2t 0x0t
        0xb3t 0x0t
        0xb4t 0x0t
        0xb5t 0x0t
        0xb6t 0x0t
        0xb7t 0x0t
        0xb8t 0x0t
        0xb9t 0x0t
        0xbat 0x0t
        0xc2t 0x0t
        0xc3t 0x0t
        0xc4t 0x0t
        0xc5t 0x0t
        0xc6t 0x0t
        0xc7t 0x0t
        0xc8t 0x0t
        0xc9t 0x0t
        0xcat 0x0t
        0xd2t 0x0t
        0xd3t 0x0t
        0xd4t 0x0t
        0xd5t 0x0t
        0xd6t 0x0t
        0xd7t 0x0t
        0xd8t 0x0t
        0xd9t 0x0t
        0xdat 0x0t
        0xe2t 0x0t
        0xe3t 0x0t
        0xe4t 0x0t
        0xe5t 0x0t
        0xe6t 0x0t
        0xe7t 0x0t
        0xe8t 0x0t
        0xe9t 0x0t
        0xeat 0x0t
        0xf2t 0x0t
        0xf3t 0x0t
        0xf4t 0x0t
        0xf5t 0x0t
        0xf6t 0x0t
        0xf7t 0x0t
        0xf8t 0x0t
        0xf9t 0x0t
        0xfat 0x0t
        0xfft 0x0t
        0xdat 0x0t
        0x0t 0x0t
        0xct 0x0t
        0x3t 0x0t
        0x1t 0x0t
        0x0t 0x0t
        0x2t 0x0t
        0x11t 0x0t
        0x3t 0x0t
        0x11t 0x0t
        0x0t 0x0t
        0x3ft 0x0t
        0x0t 0x0t
        0xfet 0x0t
        0x7ft 0x0t
        0xe8t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0x28t 0x0t
        0xa2t 0x0t
        0x8at 0x0t
        0x0t 0x0t
        0xfft 0x0t
        0xd9t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/huawei/permission/CameraPermission;->mIsCaptureSpy:Z

    iput-boolean v2, p0, Lcom/huawei/permission/CameraPermission;->mIsFirstTimeRemind:Z

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/huawei/permission/CameraPermission;->mUid:I

    const-string v0, "CameraPermission"

    const-string v1, "CameraPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/huawei/permission/CameraPermission;->isCaptureSpy(Landroid/view/SurfaceHolder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/permission/CameraPermission;->mIsCaptureSpy:Z

    iput-boolean v2, p0, Lcom/huawei/permission/CameraPermission;->mIsFirstTimeRemind:Z

    return-void
.end method

.method private isCaptureSpy(Landroid/view/SurfaceHolder;)Z
    .locals 7
    .parameter "holder"

    .prologue
    const/16 v6, 0x14

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .local v0, rec:Landroid/graphics/Rect;
    const-string v3, "CameraPermission"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    if-ge v3, v6, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    if-ge v3, v6, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private isTakePictureBlocked()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v2, 0x1

    const/16 v6, 0x400

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/huawei/permission/CameraPermission;->mUid:I

    invoke-static {v4, v5}, Lcom/huawei/permission/StubController;->checkPrecondition(Landroid/content/Context;I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    invoke-static {v4, v6}, Lcom/huawei/permission/StubController;->isGlobalSwitchOn(Landroid/content/Context;I)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/huawei/permission/CameraPermission;->mIsCaptureSpy:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/huawei/permission/CameraPermission;->mUid:I

    invoke-static {v4, v6, v5, v7}, Lcom/huawei/permission/StubController;->remind(Landroid/content/Context;IILjava/lang/String;)I

    move-result v1

    .local v1, remindResult:I
    const/4 v4, -0x1

    if-ne v4, v1, :cond_2

    const-string v2, "CameraPermission"

    const-string v4, "remind error"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/huawei/permission/CameraPermission;->mUid:I

    invoke-static {v4, v6, v5}, Lcom/huawei/permission/StubController;->getPermission(Landroid/content/Context;II)I

    move-result v0

    .local v0, permissionOp:I
    if-ne v2, v1, :cond_3

    iget-boolean v4, p0, Lcom/huawei/permission/CameraPermission;->mIsFirstTimeRemind:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/huawei/permission/CameraPermission;->mContext:Landroid/content/Context;

    iget v5, p0, Lcom/huawei/permission/CameraPermission;->mUid:I

    invoke-static {v4, v5, v6, v0, v7}, Lcom/huawei/permission/StubController;->notifyAlert(Landroid/content/Context;IIILjava/lang/String;)V

    iput-boolean v3, p0, Lcom/huawei/permission/CameraPermission;->mIsFirstTimeRemind:Z

    :cond_3
    const/4 v4, 0x2

    if-ne v4, v0, :cond_4

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_4
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method public blockTakePicture([B)V
    .locals 3
    .parameter "data"

    .prologue
    invoke-direct {p0}, Lcom/huawei/permission/CameraPermission;->isTakePictureBlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    array-length v1, p1

    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v2, 0x0

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #len:I
    :cond_0
    return-void
.end method

.method public composeFakePicture([B)V
    .locals 3
    .parameter "data"

    .prologue
    invoke-direct {p0}, Lcom/huawei/permission/CameraPermission;->isTakePictureBlocked()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/huawei/permission/CameraPermission;->mData:[C

    array-length v1, v2

    .local v1, len:I
    array-length v2, p1

    if-le v1, v2, :cond_0

    array-length v1, p1

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    sget-object v2, Lcom/huawei/permission/CameraPermission;->mData:[C

    aget-char v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #len:I
    :cond_1
    return-void
.end method
