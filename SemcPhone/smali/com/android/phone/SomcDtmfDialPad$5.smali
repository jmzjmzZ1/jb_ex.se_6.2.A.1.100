.class Lcom/android/phone/SomcDtmfDialPad$5;
.super Ljava/lang/Object;
.source "SomcDtmfDialPad.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/SomcDtmfDialPad;->initButtons(Z)V
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
    .line 286
    iput-object p1, p0, Lcom/android/phone/SomcDtmfDialPad$5;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v0, 0x1

    .line 289
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 300
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 291
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/SomcDtmfDialPad$5;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    const/16 v2, 0x37

    #calls: Lcom/android/phone/SomcDtmfDialPad;->keyPressed(I)V
    invoke-static {v1, v2}, Lcom/android/phone/SomcDtmfDialPad;->access$500(Lcom/android/phone/SomcDtmfDialPad;I)V

    goto :goto_0

    .line 294
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/SomcDtmfDialPad$5;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    const/16 v2, 0x51

    #calls: Lcom/android/phone/SomcDtmfDialPad;->keyPressed(I)V
    invoke-static {v1, v2}, Lcom/android/phone/SomcDtmfDialPad;->access$500(Lcom/android/phone/SomcDtmfDialPad;I)V

    goto :goto_0

    .line 297
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/SomcDtmfDialPad$5;->this$0:Lcom/android/phone/SomcDtmfDialPad;

    const/16 v2, 0x4a

    #calls: Lcom/android/phone/SomcDtmfDialPad;->keyPressed(I)V
    invoke-static {v1, v2}, Lcom/android/phone/SomcDtmfDialPad;->access$500(Lcom/android/phone/SomcDtmfDialPad;I)V

    goto :goto_0

    .line 289
    :pswitch_data_0
    .packed-switch 0x7f070061
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
