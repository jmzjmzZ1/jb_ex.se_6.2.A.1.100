.class Lcom/android/phone/SomcInCallScreen$17;
.super Landroid/os/AsyncTask;
.source "SomcInCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcInCallScreen;->asyncUpdateContactSns(Lcom/android/phone/SomcCallerInfo;)V
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
        "Lcom/android/phone/SomcInCallScreen$SnsInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcInCallScreen;

.field final synthetic val$callerInfo:Lcom/android/phone/SomcCallerInfo;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcInCallScreen;Lcom/android/phone/SomcCallerInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 4084
    iput-object p1, p0, Lcom/android/phone/SomcInCallScreen$17;->this$0:Lcom/android/phone/SomcInCallScreen;

    iput-object p2, p0, Lcom/android/phone/SomcInCallScreen$17;->val$callerInfo:Lcom/android/phone/SomcCallerInfo;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method private getSnsUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2
    .parameter "phoneNumber"

    .prologue
    .line 4086
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4087
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    .line 4089
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/phone/SomcInCallScreen$SnsInfo;
    .locals 5
    .parameter "params"

    .prologue
    .line 4096
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen$17;->val$callerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v2, v2, Lcom/android/phone/SomcCallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/phone/SomcInCallScreen$17;->getSnsUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4097
    .local v1, uri:Landroid/net/Uri;
    sget-boolean v2, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "SomcInCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin loading Sns: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4098
    :cond_0
    iget-object v2, p0, Lcom/android/phone/SomcInCallScreen$17;->this$0:Lcom/android/phone/SomcInCallScreen;

    #getter for: Lcom/android/phone/SomcInCallScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/phone/SomcInCallScreen;->access$2100(Lcom/android/phone/SomcInCallScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/SomcInCallScreen$17;->val$callerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v3, v3, Lcom/android/phone/SomcCallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/android/phone/SomcPhoneUtils;->getSnsInfo(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;)Lcom/android/phone/SomcInCallScreen$SnsInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 4103
    .end local v1           #uri:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 4100
    :catch_0
    move-exception v0

    .line 4101
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "SomcInCallScreen"

    const-string v3, "Error getSnsInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4103
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 4084
    check-cast p1, [Ljava/lang/Void;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen$17;->doInBackground([Ljava/lang/Void;)Lcom/android/phone/SomcInCallScreen$SnsInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/phone/SomcInCallScreen$SnsInfo;)V
    .locals 9
    .parameter "info"

    .prologue
    .line 4108
    if-nez p1, :cond_0

    .line 4120
    :goto_0
    return-void

    .line 4109
    :cond_0
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen$17;->val$callerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v6, p0, Lcom/android/phone/SomcInCallScreen$17;->this$0:Lcom/android/phone/SomcInCallScreen;

    iget-object v7, p1, Lcom/android/phone/SomcInCallScreen$SnsInfo;->snsPackage:Ljava/lang/String;

    iget v8, p1, Lcom/android/phone/SomcInCallScreen$SnsInfo;->iconRes:I

    #calls: Lcom/android/phone/SomcInCallScreen;->getIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    invoke-static {v6, v7, v8}, Lcom/android/phone/SomcInCallScreen;->access$2200(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, v5, Lcom/android/phone/SomcCallerInfo;->snsIcon:Landroid/graphics/drawable/Drawable;

    .line 4110
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 4111
    .local v4, d:Ljava/util/Date;
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    .line 4112
    .local v2, currentTime:J
    const-wide/32 v0, 0x240c8400

    .line 4113
    .local v0, ONE_WEEK:J
    iget-wide v5, p1, Lcom/android/phone/SomcInCallScreen$SnsInfo;->timeStamp:J

    sub-long v5, v2, v5

    const-wide/32 v7, 0x240c8400

    cmp-long v5, v5, v7

    if-ltz v5, :cond_1

    iget-wide v5, p1, Lcom/android/phone/SomcInCallScreen$SnsInfo;->timeStamp:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_2

    .line 4114
    :cond_1
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen$17;->val$callerInfo:Lcom/android/phone/SomcCallerInfo;

    iget-object v6, p1, Lcom/android/phone/SomcInCallScreen$SnsInfo;->snsText:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/phone/SomcCallerInfo;->snsText:Ljava/lang/String;

    .line 4116
    :cond_2
    sget-boolean v5, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v5, :cond_3

    .line 4117
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen$17;->this$0:Lcom/android/phone/SomcInCallScreen;

    const-string v6, "Query SNS done : updateScreen!"

    #calls: Lcom/android/phone/SomcInCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/SomcInCallScreen;->access$000(Lcom/android/phone/SomcInCallScreen;Ljava/lang/String;)V

    .line 4119
    :cond_3
    iget-object v5, p0, Lcom/android/phone/SomcInCallScreen$17;->this$0:Lcom/android/phone/SomcInCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/SomcInCallScreen;->updateScreen()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 4084
    check-cast p1, Lcom/android/phone/SomcInCallScreen$SnsInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcInCallScreen$17;->onPostExecute(Lcom/android/phone/SomcInCallScreen$SnsInfo;)V

    return-void
.end method
