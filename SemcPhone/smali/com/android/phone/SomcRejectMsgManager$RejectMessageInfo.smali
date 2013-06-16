.class final Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;
.super Ljava/lang/Object;
.source "SomcRejectMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcRejectMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RejectMessageInfo"
.end annotation


# instance fields
.field public content:Ljava/lang/String;

.field public recipient:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "recipient"
    .parameter "content"

    .prologue
    .line 211
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->recipient:Ljava/lang/String;

    .line 213
    iput-object p2, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->content:Ljava/lang/String;

    .line 214
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    .line 218
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    .line 225
    :goto_0
    return v1

    .line 219
    :cond_0
    instance-of v1, p1, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 220
    check-cast v0, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;

    .line 225
    .local v0, info:Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;
    iget-object v1, p0, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->recipient:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/phone/SomcRejectMsgManager$RejectMessageInfo;->recipient:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    goto :goto_0
.end method
