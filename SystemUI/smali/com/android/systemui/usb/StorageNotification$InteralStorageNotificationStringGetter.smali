.class Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;
.super Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;
.source "StorageNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/usb/StorageNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InteralStorageNotificationStringGetter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/StorageNotification;


# direct methods
.method private constructor <init>(Lcom/android/systemui/usb/StorageNotification;)V
    .locals 1
    .parameter

    .prologue
    .line 562
    iput-object p1, p0, Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;->this$0:Lcom/android/systemui/usb/StorageNotification;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/usb/StorageNotification$StorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/usb/StorageNotification;Lcom/android/systemui/usb/StorageNotification$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 562
    invoke-direct {p0, p1}, Lcom/android/systemui/usb/StorageNotification$InteralStorageNotificationStringGetter;-><init>(Lcom/android/systemui/usb/StorageNotification;)V

    return-void
.end method


# virtual methods
.method getMessageIdOnNofs()I
    .locals 1

    .prologue
    .line 580
    const v0, 0x10400da

    return v0
.end method

.method getMessageIdOnUnmountable()I
    .locals 1

    .prologue
    .line 572
    const v0, 0x10400d8

    return v0
.end method

.method getTitleIdOnChecking()I
    .locals 1

    .prologue
    .line 564
    const v0, 0x10400d6

    return v0
.end method

.method getTitleIdOnNofs()I
    .locals 1

    .prologue
    .line 576
    const v0, 0x10400d9

    return v0
.end method

.method getTitleIdOnUnmountable()I
    .locals 1

    .prologue
    .line 568
    const v0, 0x10400d7

    return v0
.end method
