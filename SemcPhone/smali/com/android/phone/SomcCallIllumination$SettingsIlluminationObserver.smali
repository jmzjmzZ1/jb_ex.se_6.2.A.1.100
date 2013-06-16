.class Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;
.super Landroid/database/ContentObserver;
.source "SomcCallIllumination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcCallIllumination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsIlluminationObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcCallIllumination;


# direct methods
.method public constructor <init>(Lcom/android/phone/SomcCallIllumination;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;->this$0:Lcom/android/phone/SomcCallIllumination;

    .line 285
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 286
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3
    .parameter "selfChange"
    .parameter "uri"

    .prologue
    .line 290
    new-instance v0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver$1;-><init>(Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 310
    return-void
.end method
