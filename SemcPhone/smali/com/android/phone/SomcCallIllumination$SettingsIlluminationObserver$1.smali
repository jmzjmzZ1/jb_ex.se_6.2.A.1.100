.class Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver$1;
.super Landroid/os/AsyncTask;
.source "SomcCallIllumination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;->onChange(ZLandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/net/Uri;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;)V
    .locals 0
    .parameter

    .prologue
    .line 290
    iput-object p1, p0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver$1;->this$1:Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 290
    check-cast p1, [Landroid/net/Uri;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver$1;->doInBackground([Landroid/net/Uri;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Landroid/net/Uri;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 293
    aget-object v0, p1, v2

    if-nez v0, :cond_1

    .line 307
    :cond_0
    :goto_0
    return-object v3

    .line 295
    :cond_1
    aget-object v0, p1, v2

    sget-object v1, Lcom/sonymobile/settings/illumination/Illumination;->MISSED_CALL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver$1;->this$1:Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;

    iget-object v0, v0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;->this$0:Lcom/android/phone/SomcCallIllumination;

    const-string v1, "Missed call illumination provider changed."

    #calls: Lcom/android/phone/SomcCallIllumination;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcCallIllumination;->access$200(Lcom/android/phone/SomcCallIllumination;Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver$1;->this$1:Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;

    iget-object v0, v0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;->this$0:Lcom/android/phone/SomcCallIllumination;

    #calls: Lcom/android/phone/SomcCallIllumination;->queryMissedCallNotificationColor()V
    invoke-static {v0}, Lcom/android/phone/SomcCallIllumination;->access$100(Lcom/android/phone/SomcCallIllumination;)V

    goto :goto_0

    .line 298
    :cond_2
    aget-object v0, p1, v2

    sget-object v1, Lcom/sonymobile/settings/illumination/Illumination;->INC_CALL_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 299
    iget-object v0, p0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver$1;->this$1:Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;

    iget-object v0, v0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;->this$0:Lcom/android/phone/SomcCallIllumination;

    const-string v1, "Incoming call illumination provider changed."

    #calls: Lcom/android/phone/SomcCallIllumination;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcCallIllumination;->access$200(Lcom/android/phone/SomcCallIllumination;Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver$1;->this$1:Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;

    iget-object v0, v0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;->this$0:Lcom/android/phone/SomcCallIllumination;

    #calls: Lcom/android/phone/SomcCallIllumination;->querySettingsIlluminationColor()V
    invoke-static {v0}, Lcom/android/phone/SomcCallIllumination;->access$000(Lcom/android/phone/SomcCallIllumination;)V

    goto :goto_0

    .line 301
    :cond_3
    aget-object v0, p1, v2

    sget-object v1, Lcom/sonymobile/settings/illumination/Illumination;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver$1;->this$1:Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;

    iget-object v0, v0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;->this$0:Lcom/android/phone/SomcCallIllumination;

    const-string v1, "Illumination provider changed."

    #calls: Lcom/android/phone/SomcCallIllumination;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/SomcCallIllumination;->access$200(Lcom/android/phone/SomcCallIllumination;Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver$1;->this$1:Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;

    iget-object v0, v0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;->this$0:Lcom/android/phone/SomcCallIllumination;

    #calls: Lcom/android/phone/SomcCallIllumination;->querySettingsIlluminationColor()V
    invoke-static {v0}, Lcom/android/phone/SomcCallIllumination;->access$000(Lcom/android/phone/SomcCallIllumination;)V

    .line 304
    iget-object v0, p0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver$1;->this$1:Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;

    iget-object v0, v0, Lcom/android/phone/SomcCallIllumination$SettingsIlluminationObserver;->this$0:Lcom/android/phone/SomcCallIllumination;

    #calls: Lcom/android/phone/SomcCallIllumination;->queryMissedCallNotificationColor()V
    invoke-static {v0}, Lcom/android/phone/SomcCallIllumination;->access$100(Lcom/android/phone/SomcCallIllumination;)V

    goto :goto_0
.end method
