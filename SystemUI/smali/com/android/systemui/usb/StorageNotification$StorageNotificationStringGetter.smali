.class Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;
.super Ljava/lang/Object;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StorageNotificationStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 466
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 466
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getMessageIdOnBadRemoval()I
    .locals 1

    .prologue
    .line 480
    const v0, 0x10404bf

    return v0
.end method

.method getMessageIdOnChecking()I
    .locals 1

    .prologue
    .line 472
    const v0, 0x10404b9

    return v0
.end method

.method getMessageIdOnNoMedia()I
    .locals 1

    .prologue
    .line 512
    const v0, 0x10404c3

    return v0
.end method

.method getMessageIdOnNofs()I
    .locals 1

    .prologue
    .line 504
    const v0, 0x10404bb

    return v0
.end method

.method getMessageIdOnSafeUnmount()I
    .locals 1

    .prologue
    .line 496
    const v0, 0x10404c1

    return v0
.end method

.method getMessageIdOnUnmountable()I
    .locals 1

    .prologue
    .line 488
    const v0, 0x10404bd

    return v0
.end method

.method getTitleIdOnBadRemoval()I
    .locals 1

    .prologue
    .line 476
    const v0, 0x10404be

    return v0
.end method

.method getTitleIdOnChecking()I
    .locals 1

    .prologue
    .line 468
    const v0, 0x10404b8

    return v0
.end method

.method getTitleIdOnNoMedia()I
    .locals 1

    .prologue
    .line 508
    const v0, 0x10404c2

    return v0
.end method

.method getTitleIdOnNofs()I
    .locals 1

    .prologue
    .line 500
    const v0, 0x10404ba

    return v0
.end method

.method getTitleIdOnSafeUnmount()I
    .locals 1

    .prologue
    .line 492
    const v0, 0x10404c0

    return v0
.end method

.method getTitleIdOnUnmountable()I
    .locals 1

    .prologue
    .line 484
    const v0, 0x10404bc

    return v0
.end method
