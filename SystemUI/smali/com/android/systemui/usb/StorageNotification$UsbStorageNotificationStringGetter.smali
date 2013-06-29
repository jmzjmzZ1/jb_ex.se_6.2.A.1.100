.class Lcom/android/systemui/usb/StorageNotification$UsbStorageNotificationStringGetter;
.super Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UsbStorageNotificationStringGetter"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 516
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 516
    invoke-direct {p0}, Lcom/android/systemui/usb/StorageNotification$UsbStorageNotificationStringGetter;-><init>()V

    return-void
.end method


# virtual methods
.method getMessageIdOnBadRemoval()I
    .locals 1

    .prologue
    .line 526
    const v0, 0x10400c8

    return v0
.end method

.method getMessageIdOnNoMedia()I
    .locals 1

    .prologue
    .line 558
    const v0, 0x10400cc

    return v0
.end method

.method getMessageIdOnNofs()I
    .locals 1

    .prologue
    .line 550
    const v0, 0x10400c4

    return v0
.end method

.method getMessageIdOnSafeUnmount()I
    .locals 1

    .prologue
    .line 542
    const v0, 0x10400ca

    return v0
.end method

.method getMessageIdOnUnmountable()I
    .locals 1

    .prologue
    .line 534
    const v0, 0x10400c6

    return v0
.end method

.method getTitleIdOnBadRemoval()I
    .locals 1

    .prologue
    .line 522
    const v0, 0x10400c7

    return v0
.end method

.method getTitleIdOnChecking()I
    .locals 1

    .prologue
    .line 518
    const v0, 0x10400c2

    return v0
.end method

.method getTitleIdOnNoMedia()I
    .locals 1

    .prologue
    .line 554
    const v0, 0x10400cb

    return v0
.end method

.method getTitleIdOnNofs()I
    .locals 1

    .prologue
    .line 546
    const v0, 0x10400c3

    return v0
.end method

.method getTitleIdOnSafeUnmount()I
    .locals 1

    .prologue
    .line 538
    const v0, 0x10400c9

    return v0
.end method

.method getTitleIdOnUnmountable()I
    .locals 1

    .prologue
    .line 530
    const v0, 0x10400c5

    return v0
.end method
