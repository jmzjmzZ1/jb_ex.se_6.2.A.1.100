.class Lcom/android/phone/SomcInCallScreen$18;
.super Landroid/os/AsyncTask;
.source "SomcInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen;->handleCityIdInfo(Lcom/android/phone/SomcCallerInfo;)V
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
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;

.field final synthetic val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcCallerInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4141
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$18;->this$0:Lcom/android/phone/SomcInCallScreen;

    iput-object p2, p0, Lcom/android/phone/SomcInCallScreen$18;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4141
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen$18;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .parameter "params"

    .prologue
    .line 4145
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$18;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v1, p0, Lcom/android/phone/SomcInCallScreen$18;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/SomcInCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen$18;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v2, v2, Lcom/android/phone/SomcCallerInfo;->phoneNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen$18;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mSystemProvided:Z
    invoke-static {v3}, Lcom/android/phone/SomcInCallScreen;->access$2300(Lcom/android/phone/SomcInCallScreen;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/phone/CityIdInfo;->getCityIdInfo(Landroid/content/Context;Ljava/lang/CharSequence;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    .line 4147
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4141
    check-cast p1, Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen$18;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .parameter "result"

    .prologue
    .line 4152
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$18;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mCallView:Lcom/android/phone/CallView;
    invoke-static {v0}, Lcom/android/phone/SomcInCallScreen;->access$1600(Lcom/android/phone/SomcInCallScreen;)Lcom/android/phone/CallView;

    move-result-object v1

    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$18;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v0, v0, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setForegroundCallAdditionalCallInfo(Ljava/lang/String;)V

    .line 4154
    return-void

    .line 4152
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcInCallScreen$18;->val$somcCallerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v0, v0, Lcom/android/phone/SomcCallerInfo;->cityIdInfo:Ljava/lang/String;

    goto :goto_0
.end method
