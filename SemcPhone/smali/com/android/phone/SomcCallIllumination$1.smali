.class Lcom/android/phone/SomcCallIllumination$1;
.super Landroid/os/AsyncTask;
.source "SomcCallIllumination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcCallIllumination;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcCallIllumination;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcCallIllumination;)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput-object p1, p0, Lcom/android/phone/SomcCallIllumination$1;->this$0:Lcom/android/phone/SomcCallIllumination;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 125
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcCallIllumination$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/phone/SomcCallIllumination$1;->this$0:Lcom/android/phone/SomcCallIllumination;

    #calls: Lcom/android/phone/SomcCallIllumination;->querySettingsIlluminationColor()V
    invoke-static {v0}, Lcom/android/phone/SomcCallIllumination;->access$000(Lcom/android/phone/SomcCallIllumination;)V

    .line 129
    iget-object v0, p0, Lcom/android/phone/SomcCallIllumination$1;->this$0:Lcom/android/phone/SomcCallIllumination;

    #calls: Lcom/android/phone/SomcCallIllumination;->queryMissedCallNotificationColor()V
    invoke-static {v0}, Lcom/android/phone/SomcCallIllumination;->access$100(Lcom/android/phone/SomcCallIllumination;)V

    .line 130
    const/4 v0, 0x0

    return-object v0
.end method
