.class Lcom/android/phone/SomcCallRecorder$RecorderTask$1;
.super Ljava/lang/Object;
.source "SomcCallRecorder.java"

# interfaces
.implements Landroid/media/MediaRecorder$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcCallRecorder$RecorderTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/SomcCallRecorder$RecorderTask;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcCallRecorder$RecorderTask;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask$1;->this$1:Lcom/android/phone/SomcCallRecorder$RecorderTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaRecorder;II)V
    .locals 2
    .parameter "mr"
    .parameter "what"
    .parameter "extra"

    .prologue
    .line 132
    const-string v0, "SomcCallRecorder"

    const-string v1, "onError() : Error happens while recording..."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/phone/SomcCallRecorder$RecorderTask$1;->this$1:Lcom/android/phone/SomcCallRecorder$RecorderTask;

    iget-object v0, v0, Lcom/android/phone/SomcCallRecorder$RecorderTask;->this$0:Lcom/android/phone/SomcCallRecorder;

    invoke-virtual {v0}, Lcom/android/phone/SomcCallRecorder;->stop()V

    .line 134
    return-void
.end method
