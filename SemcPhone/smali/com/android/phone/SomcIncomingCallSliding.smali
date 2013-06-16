.class public Lcom/android/phone/SomcIncomingCallSliding;
.super Lcom/android/phone/SomcIncomingCallView;
.source "SomcIncomingCallSliding.java"


# instance fields
.field private mShowLeftHint:Z

.field private mShowRightHint:Z

.field private mSlidingTab:Lcom/android/phone/SomcSlidingTab;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0, p1}, Lcom/android/phone/SomcIncomingCallView;-><init>(Landroid/content/Context;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;

    .line 27
    iput-boolean v1, p0, Lcom/android/phone/SomcIncomingCallSliding;->mShowLeftHint:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/phone/SomcIncomingCallSliding;->mShowRightHint:Z

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/phone/SomcIncomingCallView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;

    .line 27
    iput-boolean v1, p0, Lcom/android/phone/SomcIncomingCallSliding;->mShowLeftHint:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/phone/SomcIncomingCallSliding;->mShowRightHint:Z

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcIncomingCallSliding;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mShowLeftHint:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/SomcIncomingCallSliding;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/phone/SomcIncomingCallSliding;->mShowLeftHint:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/SomcIncomingCallSliding;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mShowRightHint:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/SomcIncomingCallSliding;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/android/phone/SomcIncomingCallSliding;->mShowRightHint:Z

    return p1
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Lcom/android/phone/SomcIncomingCallView;->onFinishInflate()V

    .line 42
    const v0, 0x7f0700c3

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcIncomingCallSliding;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcSlidingTab;

    iput-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;

    .line 43
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;

    new-instance v1, Lcom/android/phone/SomcIncomingCallSliding$1;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcIncomingCallSliding$1;-><init>(Lcom/android/phone/SomcIncomingCallSliding;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingTab;->setOnTriggerListener(Lcom/android/phone/SomcSlidingTab$OnTriggerListener;)V

    .line 108
    return-void
.end method

.method setRejectMsgVisibility(I)V
    .locals 0
    .parameter "visibility"

    .prologue
    .line 122
    return-void
.end method

.method public setVisibility(I)V
    .locals 2
    .parameter "visibility"

    .prologue
    const/4 v1, 0x1

    .line 112
    invoke-super {p0, p1}, Lcom/android/phone/SomcIncomingCallView;->setVisibility(I)V

    .line 113
    iget-object v0, p0, Lcom/android/phone/SomcIncomingCallSliding;->mSlidingTab:Lcom/android/phone/SomcSlidingTab;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcSlidingTab;->setVisibility(I)V

    .line 114
    if-nez p1, :cond_0

    .line 115
    iput-boolean v1, p0, Lcom/android/phone/SomcIncomingCallSliding;->mShowLeftHint:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/phone/SomcIncomingCallSliding;->mShowRightHint:Z

    .line 118
    :cond_0
    return-void
.end method
