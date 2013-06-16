.class Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;
.super Ljava/lang/Object;
.source "SomcRejectMsgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcRejectMsgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DbUpdateInfo"
.end annotation


# instance fields
.field final dbFailListener:Lcom/android/phone/SomcRejectMsgManager$DbFailListener;

.field final id:I

.field final message:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/android/phone/SomcRejectMsgManager$DbFailListener;)V
    .locals 0
    .parameter "message"
    .parameter "id"
    .parameter "dbFailListener"

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;->message:Ljava/lang/String;

    .line 202
    iput p2, p0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;->id:I

    .line 203
    iput-object p3, p0, Lcom/android/phone/SomcRejectMsgManager$DbUpdateInfo;->dbFailListener:Lcom/android/phone/SomcRejectMsgManager$DbFailListener;

    .line 204
    return-void
.end method
