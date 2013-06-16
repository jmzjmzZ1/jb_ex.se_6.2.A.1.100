.class Lcom/android/phone/SomcSlidingDrawer$SlidingHandler;
.super Landroid/os/Handler;
.source "SomcSlidingDrawer.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/SomcSlidingDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/SomcSlidingDrawer;


# direct methods
.method private constructor <init>(Lcom/android/phone/SomcSlidingDrawer;)V
    .locals 0
    .parameter

    .prologue
    .line 733
    iput-object p1, p0, Lcom/android/phone/SomcSlidingDrawer$SlidingHandler;->this$0:Lcom/android/phone/SomcSlidingDrawer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/SomcSlidingDrawer;Lcom/android/phone/SomcSlidingDrawer$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 733
    invoke-direct {p0, p1}, Lcom/android/phone/SomcSlidingDrawer$SlidingHandler;-><init>(Lcom/android/phone/SomcSlidingDrawer;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "m"

    .prologue
    .line 735
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 740
    :goto_0
    return-void

    .line 737
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcSlidingDrawer$SlidingHandler;->this$0:Lcom/android/phone/SomcSlidingDrawer;

    #calls: Lcom/android/phone/SomcSlidingDrawer;->doAnimation()V
    invoke-static {v0}, Lcom/android/phone/SomcSlidingDrawer;->access$100(Lcom/android/phone/SomcSlidingDrawer;)V

    goto :goto_0

    .line 735
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
