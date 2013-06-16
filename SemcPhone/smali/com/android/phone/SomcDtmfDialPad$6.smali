.class Lcom/android/phone/SomcDtmfDialPad$6;
.super Ljava/lang/Object;
.source "SomcDtmfDialPad.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcDtmfDialPad;->backspace()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcDtmfDialPad;


# direct methods
.method constructor <init>(Lcom/android/phone/SomcDtmfDialPad;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/android/phone/SomcDtmfDialPad$6;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 327
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad$6;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    #getter for: Lcom/android/phone/SomcDtmfDialPad;->mBackspacePressed:Z
    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->access$600(Lcom/android/phone/SomcDtmfDialPad;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad$6;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    #getter for: Lcom/android/phone/SomcDtmfDialPad;->mBackspaceCount:I
    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->access$700(Lcom/android/phone/SomcDtmfDialPad;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad$6;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    #getter for: Lcom/android/phone/SomcDtmfDialPad;->mDialpadDigits:Lcom/android/phone/SomcEditText;
    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->access$800(Lcom/android/phone/SomcDtmfDialPad;)Lcom/android/phone/SomcEditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcEditText;->setText(Ljava/lang/CharSequence;)V

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcDtmfDialPad$6;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    invoke-static {v0}, Lcom/android/phone/SomcDtmfDialPad;->access$710(Lcom/android/phone/SomcDtmfDialPad;)I

    .line 331
    return-void
.end method
