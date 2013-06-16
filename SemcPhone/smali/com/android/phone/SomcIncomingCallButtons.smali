.class public Lcom/android/phone/SomcIncomingCallButtons;
.super Lcom/android/phone/SomcIncomingCallView;
.source "SomcIncomingCallButtons.java"


# instance fields
.field private mRejectMsgView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/phone/SomcIncomingCallView;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcIncomingCallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 36
    invoke-super {p0}, Lcom/android/phone/SomcIncomingCallView;->onFinishInflate()V

    .line 37
    const v0, 0x7f0700c7

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcIncomingCallButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/phone/SomcIncomingCallButtons$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcIncomingCallButtons$1;-><init>(Lcom/android/phone/SomcIncomingCallButtons;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    const v0, 0x7f0700c5

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcIncomingCallButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/phone/SomcIncomingCallButtons$2;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcIncomingCallButtons$2;-><init>(Lcom/android/phone/SomcIncomingCallButtons;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    const v0, 0x7f0700c6

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcIncomingCallButtons;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcIncomingCallButtons;->mRejectMsgView:Landroid/view/View;

    .line 48
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallButtons;->mRejectMsgView:Landroid/view/View;

    new-instance v1, Lcom/android/phone/SomcIncomingCallButtons$3;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcIncomingCallButtons$3;-><init>(Lcom/android/phone/SomcIncomingCallButtons;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method setRejectMsgVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallButtons;->mRejectMsgView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 32
    return-void
.end method
