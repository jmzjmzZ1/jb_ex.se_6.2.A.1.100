.class public Lcom/android/phone/LargeCallView;
.super Lcom/android/phone/CallView;
.source "LargeCallView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/LargeCallView$WaitingCallPanel;
    }
.end annotation


# static fields
.field private static final SRC_TAGS:[Ljava/lang/String;

.field private static final WAITING_PANEL_VIEW_ANCTIONS:[[I


# instance fields
.field private mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

.field private mAdditionalCallInfoOfHeldTextView:Landroid/widget/TextView;

.field private mAdditionalCallInfoTextView:Landroid/widget/TextView;

.field private mBgCallContactNumberIcon:Landroid/widget/ImageView;

.field private mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

.field private mCallRecordingPanel:Landroid/widget/LinearLayout;

.field private mCallRecordingTimeTextView:Landroid/widget/TextView;

.field private mCallTime:Landroid/widget/TextView;

.field private mCanSeparate:Z

.field private mConferenceCallButton:Landroid/widget/Button;

.field private mConferenceList:Landroid/widget/ListView;

.field private mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

.field private mConnectingProgressBar:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

.field private mEndCallButton:Landroid/view/View;

.field private mEndCallInfo:Landroid/widget/TextView;

.field private mEndCallLayout:Landroid/view/View;

.field private mFgCallContactNumberIcon:Landroid/widget/ImageView;

.field private mHeldCallPanel:Landroid/widget/RelativeLayout;

.field private mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

.field private mInformationBox:Landroid/widget/TextView;

.field private mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

.field private mManageConferencePanel:Landroid/view/ViewGroup;

.field private mMergeCallsButton:Landroid/widget/LinearLayout;

.field private mMsgList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mMsgListView:Landroid/widget/ListView;

.field private mNameOrNumberBGCall:Landroid/widget/TextView;

.field private mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

.field private mPopupView:[Landroid/view/View;

.field private mRedirectingCallMessage:Landroid/widget/TextView;

.field private mRedirectingNameOrNumber:Landroid/widget/TextView;

.field private mRedirectingdNumberTextView:Landroid/widget/TextView;

.field private mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

.field private mRetrieveCallButton:Landroid/widget/Button;

.field private mSipIcon:Landroid/widget/ImageView;

.field private mSipUriTextView:Landroid/widget/TextView;

.field private mSnsIcon:Landroid/widget/ImageView;

.field private mSnsInfo:Lcom/android/phone/SomcSnsTextView;

.field private mSnsPanel:Landroid/widget/RelativeLayout;

.field private mTypeOfNumberTextView:Landroid/widget/TextView;

.field private mView:Landroid/view/View;

.field private final mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

.field private mWriteNewMsgButton:Landroid/widget/Button;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    .line 74
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "{0}"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/LargeCallView;->SRC_TAGS:[Ljava/lang/String;

    .line 169
    const/4 v0, 0x6

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/LargeCallView;->WAITING_PANEL_VIEW_ANCTIONS:[[I

    return-void

    :array_0
    .array-data 0x4
        0xbat 0x0t 0x7t 0x7ft
        0x15t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0xbbt 0x0t 0x7t 0x7ft
        0xbt 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0xb7t 0x0t 0x7t 0x7ft
        0xat 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0xb8t 0x0t 0x7t 0x7ft
        0xct 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0xbet 0x0t 0x7t 0x7ft
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    :array_5
    .array-data 0x4
        0xbct 0x0t 0x7t 0x7ft
        0xbt 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/android/phone/CallView;-><init>(Landroid/content/Context;)V

    .line 145
    new-instance v0, Lcom/android/phone/LargeCallView$WaitingCallPanel;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;-><init>(Lcom/android/phone/LargeCallView;Lcom/android/phone/LargeCallView$1;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgList:Ljava/util/List;

    .line 181
    iput-object p1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    .line 182
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initComponents()V

    .line 184
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/LargeCallView;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->animateHideIncomingCallView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/LargeCallView;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/LargeCallView;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 66
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()[[I
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/phone/LargeCallView;->WAITING_PANEL_VIEW_ANCTIONS:[[I

    return-object v0
.end method

.method private animateHideIncomingCallView(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 1367
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1383
    :goto_0
    return-void

    .line 1368
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 1371
    new-instance v1, Lcom/android/phone/LargeCallView$8;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/LargeCallView$8;-><init>(Lcom/android/phone/LargeCallView;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 1382
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private cleanSns()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 433
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mSnsInfo:Lcom/android/phone/SomcSnsTextView;

    .line 434
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    .line 435
    iput-object v2, p0, Lcom/android/phone/LargeCallView;->mSnsIcon:Landroid/widget/ImageView;

    .line 436
    return-void
.end method

.method private disableMergeCallsButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 770
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 771
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 772
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 773
    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .parameter "event"
    .parameter "view"

    .prologue
    .line 1357
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1358
    .local v0, eventText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1359
    .local v1, size:I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1361
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1362
    const-string v2, ""

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1364
    :cond_0
    return-void
.end method

.method private enableMergeCallsButton()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 779
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 780
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07007a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 781
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07007b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 782
    return-void
.end method

.method private formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 1463
    if-nez p1, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u202a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u202c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private hideCallingProgress()V
    .locals 2

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->setInOutgoingCallState(Z)V

    .line 753
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConnectingProgressBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 754
    return-void
.end method

.method private hideManageConferencePanel()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1148
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 1149
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 1150
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1151
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    .line 1153
    :cond_0
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    .line 1154
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1155
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->updateCallRecordingTimeVisibility()V

    .line 1157
    :cond_1
    return-void
.end method

.method private hideNormalCallLayout()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 882
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 883
    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 884
    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 885
    const v0, 0x7f07009c

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 886
    const v0, 0x7f07009f

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 887
    return-void
.end method

.method private initComponents()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v2, -0x1

    .line 236
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001d

    invoke-virtual {v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    .line 238
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/LargeCallView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 241
    new-instance v0, Lcom/android/phone/SomcInCallButtonPanel;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isHWQwertyVisible()Z

    move-result v4

    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v6, :cond_0

    const/4 v5, 0x1

    :goto_0
    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/SomcInCallButtonPanel;-><init>(Landroid/view/View;Lcom/android/phone/CallView;Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    .line 246
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07007f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcContactPicView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    .line 249
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    const v1, 0x7f07009c

    invoke-virtual {p0, v1}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->init(Landroid/view/View;)V

    .line 251
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070092

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    .line 254
    const v0, 0x7f07008d

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    .line 256
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcIncomingCallView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    .line 258
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initMsgListComponents()V

    .line 260
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070082

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcContactTextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    .line 261
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    .line 262
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07008b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingNameOrNumber:Landroid/widget/TextView;

    .line 263
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f07008c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingdNumberTextView:Landroid/widget/TextView;

    .line 264
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070085

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    .line 265
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070086

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoTextView:Landroid/widget/TextView;

    .line 266
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070088

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    .line 267
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    .line 268
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070076

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberBGCall:Landroid/widget/TextView;

    .line 269
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070079

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoOfHeldTextView:Landroid/widget/TextView;

    .line 271
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070075

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    .line 272
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070074

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    .line 273
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070095

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mConnectingProgressBar:Landroid/widget/RelativeLayout;

    .line 275
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    .line 276
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070091

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    .line 277
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070094

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    .line 279
    const v0, 0x7f07009a

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcSnsTextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsInfo:Lcom/android/phone/SomcSnsTextView;

    .line 280
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsInfo:Lcom/android/phone/SomcSnsTextView;

    invoke-virtual {v0, v6}, Lcom/android/phone/SomcSnsTextView;->setMaxLines(I)V

    .line 281
    const v0, 0x7f070098

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    .line 282
    const v0, 0x7f070099

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsIcon:Landroid/widget/ImageView;

    .line 284
    const v0, 0x7f07009e

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallInfo:Landroid/widget/TextView;

    .line 285
    const v0, 0x7f070093

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallLayout:Landroid/view/View;

    .line 286
    const v0, 0x7f070035

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    .line 287
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    new-instance v1, Lcom/android/phone/LargeCallView$2;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$2;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070083

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mFgCallContactNumberIcon:Landroid/widget/ImageView;

    .line 294
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFgCallContactNumberIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070077

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    .line 298
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    new-instance v1, Lcom/android/phone/LargeCallView$3;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$3;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcIncomingCallView;->setOnIncomingCallRspListener(Lcom/android/phone/SomcIncomingCallView$OnIncomingCallResponseListener;)V

    .line 318
    iput-object v7, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 320
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    .line 322
    const v0, 0x7f07009f

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallRecordingPanel:Landroid/widget/LinearLayout;

    .line 323
    const v0, 0x7f0700a1

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mCallRecordingTimeTextView:Landroid/widget/TextView;

    .line 325
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initDtmfDialPad()V

    .line 326
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initPopupDialog()V

    .line 327
    return-void

    .line 241
    :cond_0
    const/4 v5, 0x0

    goto/16 :goto_0
.end method

.method private initDtmfDialPad()V
    .locals 3

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1006
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1008
    new-instance v0, Lcom/android/phone/SomcDtmfDialPad;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isHWQwertyVisible()Z

    move-result v2

    invoke-direct {v0, v1, p0, v2}, Lcom/android/phone/SomcDtmfDialPad;-><init>(Landroid/content/Context;Landroid/view/View;Z)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    .line 1009
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 1010
    return-void
.end method

.method private initManageConferencePanel()V
    .locals 2

    .prologue
    .line 1091
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1095
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700a3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1096
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 1098
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700c8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 1100
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1101
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Couldn\'t find manageConferencePanel!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1104
    :cond_0
    return-void
.end method

.method private initMsgListComponents()V
    .locals 2

    .prologue
    .line 330
    const v0, 0x7f0700a9

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/SomcSlidingDrawer;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    .line 331
    const v0, 0x7f0700b0

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    .line 332
    const v0, 0x7f0700af

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mWriteNewMsgButton:Landroid/widget/Button;

    .line 333
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/phone/LargeCallView$4;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$4;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 341
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWriteNewMsgButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/phone/LargeCallView$5;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$5;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    new-instance v1, Lcom/android/phone/LargeCallView$6;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$6;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->setOnDrawerOpenListener(Lcom/android/phone/SomcSlidingDrawer$OnDrawerOpenListener;)V

    .line 362
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    new-instance v1, Lcom/android/phone/LargeCallView$7;

    invoke-direct {v1, p0}, Lcom/android/phone/LargeCallView$7;-><init>(Lcom/android/phone/LargeCallView;)V

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->setOnDrawerCloseListener(Lcom/android/phone/SomcSlidingDrawer$OnDrawerCloseListener;)V

    .line 371
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->setVisibility(I)V

    .line 372
    return-void
.end method

.method private initPopupDialog()V
    .locals 8

    .prologue
    .line 188
    const/4 v5, 0x4

    new-array v5, v5, [Landroid/view/View;

    const/4 v6, 0x0

    const v7, 0x7f0700b1

    invoke-virtual {p0, v7}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const v7, 0x7f0700b4

    invoke-virtual {p0, v7}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const v7, 0x7f0700b2

    invoke-virtual {p0, v7}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    const v7, 0x7f0700b3

    invoke-virtual {p0, v7}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    aput-object v7, v5, v6

    iput-object v5, p0, Lcom/android/phone/LargeCallView;->mPopupView:[Landroid/view/View;

    .line 195
    new-instance v3, Lcom/android/phone/LargeCallView$1;

    invoke-direct {v3, p0}, Lcom/android/phone/LargeCallView$1;-><init>(Lcom/android/phone/LargeCallView;)V

    .line 225
    .local v3, popupDialogListener:Landroid/view/View$OnClickListener;
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mPopupView:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v4, v0, v1

    .line 226
    .local v4, v:Landroid/view/View;
    invoke-virtual {v4, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v4           #v:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private isManageConferenceOpen()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 1141
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1142
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 1144
    :cond_0
    return v0
.end method

.method private isSoundRoutingMenuOpen()Z
    .locals 1

    .prologue
    .line 977
    const v0, 0x7f0700b1

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 936
    const-string v0, "LargeCallView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    return-void
.end method

.method private makeTextViewSingleLine(Landroid/widget/TextView;)V
    .locals 1
    .parameter "textView"

    .prologue
    const/4 v0, 0x1

    .line 918
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 919
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 920
    return-void
.end method

.method private refreshVisibility(Landroid/widget/TextView;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 1292
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1293
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1297
    :goto_0
    return-void

    .line 1295
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setCallViewMode(Lcom/android/phone/CallView$CallViewMode;Z)V
    .locals 2
    .parameter "mode"
    .parameter "showBluetoothButton"

    .prologue
    const/4 v1, 0x0

    .line 513
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 517
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    if-ne p1, v0, :cond_1

    .line 518
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideManageConferencePanel()V

    .line 519
    const v0, 0x7f07007e

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 520
    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 521
    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 530
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/phone/LargeCallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    .line 531
    return-void

    .line 522
    :cond_1
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    if-ne p1, v0, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideNormalCallLayout()V

    .line 524
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initManageConferencePanel()V

    .line 525
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->showManageConferenceCallList()V

    goto :goto_0
.end method

.method private setEndCallButtonText(I)V
    .locals 2
    .parameter "resid"

    .prologue
    .line 932
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallButton:Landroid/view/View;

    const v1, 0x7f070037

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 933
    return-void
.end method

.method private setImageNull()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 441
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFgCallContactNumberIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFgCallContactNumberIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 448
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 450
    :cond_2
    return-void
.end method

.method private setRedirectingViewsVisibile(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 568
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 569
    .local v0, visibility:I
    :goto_0
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mRedirectingNameOrNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 570
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mRedirectingdNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 571
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 572
    return-void

    .line 568
    .end local v0           #visibility:I
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private setStateInformationText(I)V
    .locals 1
    .parameter "resId"

    .prologue
    .line 1026
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 1027
    return-void
.end method

.method private setStateInformationText(Ljava/lang/String;)V
    .locals 1
    .parameter "text"

    .prologue
    .line 1017
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    return-void
.end method

.method private setText(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 0
    .parameter "view"
    .parameter "text"

    .prologue
    .line 1287
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1288
    invoke-direct {p0, p1}, Lcom/android/phone/LargeCallView;->refreshVisibility(Landroid/widget/TextView;)V

    .line 1289
    return-void
.end method

.method private showCallingProgress()V
    .locals 2

    .prologue
    .line 741
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->setInOutgoingCallState(Z)V

    .line 742
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b00ab

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 743
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConnectingProgressBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 744
    return-void
.end method

.method private showManageConferenceCallList()V
    .locals 2

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallItemList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1108
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f0700ca

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    .line 1109
    new-instance v0, Lcom/android/phone/CallView$ConferenceListAdapter;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CallView$ConferenceListAdapter;-><init>(Lcom/android/phone/CallView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    .line 1110
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    iget-boolean v1, p0, Lcom/android/phone/LargeCallView;->mCanSeparate:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView$ConferenceListAdapter;->setCanSeparate(Z)V

    .line 1111
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1113
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1115
    :cond_0
    return-void
.end method

.method private showNormalConferenceCallView()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 1064
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 1065
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 1066
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1067
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 1068
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 1070
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1074
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1075
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1076
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1077
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1078
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1079
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1080
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1081
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1083
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcContactTextView;->setVisibility(I)V

    .line 1084
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactTextView;->setText(I)V

    .line 1086
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 1088
    :cond_0
    return-void
.end method

.method private updateCallRecordingTimeVisibility()V
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallRecordingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallRecordingOn(Z)V

    .line 1398
    return-void

    .line 1397
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 893
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideNormalCallLayout()V

    .line 894
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 895
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setImageNull()V

    .line 896
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 897
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 898
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 899
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 900
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 902
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 903
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 904
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 905
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 906
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcIncomingCallView;->setVisibility(I)V

    .line 907
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setVisibility(I)V

    .line 908
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Lcom/android/phone/SomcContactPicView;->invalidate()V

    .line 909
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactTextView;->setVisibility(I)V

    .line 910
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 911
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 912
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFgCallContactNumberIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 913
    invoke-virtual {p0, v1}, Lcom/android/phone/LargeCallView;->setSoundRoutingOptionsVisibility(I)V

    .line 914
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 915
    return-void
.end method

.method public clearDtmfDialPadDigits()V
    .locals 2

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcDtmfDialPad;->setDigits(Ljava/lang/String;)V

    .line 1001
    return-void
.end method

.method public closeDtmfDialPad()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 952
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 964
    :goto_0
    return-void

    .line 954
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v1, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 955
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->close()V

    .line 956
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->dtmlDialpadOpen(Z)V

    .line 960
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 961
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 962
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->sendAccessibilityEvent(I)V

    .line 963
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->updateCallRecordingTimeVisibility()V

    goto :goto_0
.end method

.method public closeRejectMsgList()V
    .locals 1

    .prologue
    .line 1332
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->animateClose()V

    .line 1333
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1349
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1350
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1351
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1352
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoTextView:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1353
    const/4 v0, 0x1

    return v0
.end method

.method public getButtonPanel()Lcom/android/phone/SomcInCallButtonPanel;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    return-object v0
.end method

.method public getDtmfDialPadDigits()Ljava/lang/String;
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->getDigits()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleBackKey()Z
    .locals 2

    .prologue
    .line 1118
    const/4 v0, 0x0

    .line 1120
    .local v0, handled:Z
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isSoundRoutingMenuOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1121
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/phone/LargeCallView;->setSoundRoutingOptionsVisibility(I)V

    .line 1122
    const/4 v0, 0x1

    .line 1137
    :cond_0
    :goto_0
    return v0

    .line 1123
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1124
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->closeDtmfDialPad()V

    .line 1125
    const/4 v0, 0x1

    goto :goto_0

    .line 1126
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isManageConferenceOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1132
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->showNormalConferenceCallView()V

    .line 1133
    sget-object v1, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v1}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1134
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public hideRejectMsgList()V
    .locals 2

    .prologue
    .line 1337
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "LargeCallView"

    const-string v1, "hideRejectMsgList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->close()V

    .line 1339
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->resetStatus()V

    .line 1340
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcSlidingDrawer;->setVisibility(I)V

    .line 1341
    return-void
.end method

.method public initRejectMsgForCarMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1321
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcIncomingCallView;->setRejectMsgVisibility(I)V

    .line 1322
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setRejectMsgVisibility(I)V

    .line 1323
    return-void
.end method

.method public initRejectMsgList(Ljava/util/HashMap;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1301
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "init reject messages list"

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 1303
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1304
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1305
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1306
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1307
    const-string v4, "message"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1308
    sget-boolean v1, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reject messages: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 1309
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMsgList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1311
    :cond_2
    new-instance v0, Landroid/widget/SimpleAdapter;

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMsgList:Ljava/util/List;

    const v3, 0x7f03001f

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "message"

    aput-object v5, v4, v7

    new-array v5, v6, [I

    const v6, 0x7f070073

    aput v6, v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 1315
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1316
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0, v7}, Lcom/android/phone/SomcSlidingDrawer;->setVisibility(I)V

    .line 1317
    return-void
.end method

.method public isDtmfDialPadOpen()Z
    .locals 1

    .prologue
    .line 973
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->isOpen()Z

    move-result v0

    return v0
.end method

.method public isRejectMsgListOpened()Z
    .locals 1

    .prologue
    .line 1327
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    invoke-virtual {v0}, Lcom/android/phone/SomcSlidingDrawer;->isOpened()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    const/4 v1, 0x0

    .line 853
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 879
    :goto_0
    return-void

    .line 857
    :sswitch_0
    const/4 v0, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/LargeCallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 862
    :sswitch_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/LargeCallView;->fireAction(ILjava/lang/Object;)V

    .line 863
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->disableMergeCallsButton()V

    goto :goto_0

    .line 867
    :sswitch_2
    const/4 v0, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/LargeCallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 871
    :sswitch_3
    const/16 v0, 0x1d

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/LargeCallView;->fireAction(ILjava/lang/Object;)V

    goto :goto_0

    .line 877
    :sswitch_4
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    goto :goto_0

    .line 853
    :sswitch_data_0
    .sparse-switch
        0x7f070074 -> :sswitch_0
        0x7f070075 -> :sswitch_1
        0x7f070083 -> :sswitch_3
        0x7f070091 -> :sswitch_4
        0x7f070092 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1279
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1280
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/phone/SomcDtmfDialPad;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 1283
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/CallView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0}, Lcom/android/phone/SomcInCallButtonPanel;->onPause()V

    .line 1271
    return-void
.end method

.method public openDtmfDialPad()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 982
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 991
    :goto_0
    return-void

    .line 984
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideNormalCallLayout()V

    .line 985
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideManageConferencePanel()V

    .line 986
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->dtmlDialpadOpen(Z)V

    .line 987
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0}, Lcom/android/phone/SomcDtmfDialPad;->open()V

    .line 988
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-boolean v1, v0, Lcom/android/phone/InCallUiState;->showDialpad:Z

    .line 989
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    const/16 v1, 0x1b

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/phone/CallView$CallViewActionListener;->onActionPerformed(ILjava/lang/Object;)V

    .line 990
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->updateCallRecordingTimeVisibility()V

    goto :goto_0
.end method

.method public reDraw()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 376
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->removeAllViews()V

    .line 377
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    .line 378
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->clear()V

    .line 379
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mManageConferencePanel:Landroid/view/ViewGroup;

    .line 380
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->setImageNull()V

    .line 381
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 383
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceList:Landroid/widget/ListView;

    .line 385
    :cond_0
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceListAdapter:Lcom/android/phone/CallView$ConferenceListAdapter;

    .line 386
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    .line 387
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    .line 389
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 390
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    .line 393
    :cond_1
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    .line 394
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    .line 395
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->cleanSns()V

    .line 397
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mRejectMsgDrawer:Lcom/android/phone/SomcSlidingDrawer;

    .line 398
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mMsgListView:Landroid/widget/ListView;

    .line 399
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mWriteNewMsgButton:Landroid/widget/Button;

    .line 400
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    .line 401
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    .line 402
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mRedirectingNameOrNumber:Landroid/widget/TextView;

    .line 403
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mRedirectingdNumberTextView:Landroid/widget/TextView;

    .line 404
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    .line 405
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    .line 406
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    .line 407
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberBGCall:Landroid/widget/TextView;

    .line 408
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoOfHeldTextView:Landroid/widget/TextView;

    .line 409
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 410
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mMergeCallsButton:Landroid/widget/LinearLayout;

    .line 413
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_3

    .line 414
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mActiveOnHoldheldCall:Landroid/widget/RelativeLayout;

    .line 417
    :cond_3
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mConnectingProgressBar:Landroid/widget/RelativeLayout;

    .line 418
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    .line 419
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    .line 420
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 421
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    .line 423
    :cond_4
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    .line 424
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mEndCallInfo:Landroid/widget/TextView;

    .line 425
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mEndCallLayout:Landroid/view/View;

    .line 426
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mFgCallContactNumberIcon:Landroid/widget/ImageView;

    .line 427
    iput-object v1, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    .line 428
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->initComponents()V

    .line 429
    return-void
.end method

.method public refreshSoundStates()V
    .locals 4

    .prologue
    .line 943
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    if-eqz v0, :cond_0

    .line 944
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    iget-boolean v1, p0, Lcom/android/phone/LargeCallView;->mSpeakerIsOn:Z

    iget-boolean v2, p0, Lcom/android/phone/LargeCallView;->mBluetoothAudioIsOn:Z

    iget-boolean v3, p0, Lcom/android/phone/LargeCallView;->mBluetoothHeadsetIsConnected:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/SomcInCallButtonPanel;->setRouteSoundButtonState(ZZZ)V

    .line 946
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    iget-boolean v1, p0, Lcom/android/phone/LargeCallView;->mMicIsMuted:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->setMicMuted(Z)V

    .line 948
    :cond_0
    return-void
.end method

.method public setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 454
    iput-object p1, p0, Lcom/android/phone/LargeCallView;->listener:Lcom/android/phone/CallView$CallViewActionListener;

    .line 455
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcInCallButtonPanel;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 456
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcDtmfDialPad;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 457
    return-void
.end method

.method public setBackgroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 830
    if-eqz p1, :cond_0

    .line 831
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 832
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 836
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mBgCallContactNumberIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .parameter "number"
    .parameter "additionalCallInfo"
    .parameter "typeOfNumber"

    .prologue
    .line 1228
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberBGCall:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1233
    :goto_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoOfHeldTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1234
    return-void

    .line 1231
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberBGCall:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/android/phone/LargeCallView;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCallRecordingOn(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v1, 0x0

    .line 1392
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->isManageConferenceOpen()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x1

    .line 1393
    .local v0, shouldShow:Z
    :goto_0
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mCallRecordingPanel:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1394
    return-void

    .end local v0           #shouldShow:Z
    :cond_0
    move v0, v1

    .line 1392
    goto :goto_0

    .line 1393
    .restart local v0       #shouldShow:Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method

.method public setCallRecordingTime(Ljava/lang/String;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 1387
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallRecordingTimeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1388
    return-void
.end method

.method public setCallTime(Ljava/lang/String;)V
    .locals 1
    .parameter "string"

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    return-void
.end method

.method public setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 502
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;Z)V

    .line 503
    return-void
.end method

.method public setDtmfDialPadDigits(Ljava/lang/String;)V
    .locals 1
    .parameter "digits"

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mDtmfDialPad:Lcom/android/phone/SomcDtmfDialPad;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcDtmfDialPad;->setDigits(Ljava/lang/String;)V

    .line 996
    return-void
.end method

.method public setForegroundCallAdditionalCallInfo(Ljava/lang/String;)V
    .locals 1
    .parameter "additionalCallInfo"

    .prologue
    .line 1260
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoTextView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1262
    :goto_0
    return-void

    .line 1261
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1}, Lcom/android/phone/LargeCallView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setForegroundCallContactNumberIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 840
    if-eqz p1, :cond_0

    .line 841
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFgCallContactNumberIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 842
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFgCallContactNumberIcon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 846
    :goto_0
    return-void

    .line 844
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mFgCallContactNumberIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 1168
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 1169
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1170
    invoke-direct {p0, p2}, Lcom/android/phone/LargeCallView;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1172
    if-nez v0, :cond_0

    .line 1173
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v3, p1}, Lcom/android/phone/SomcContactTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1178
    :goto_0
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 1184
    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b02fd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1186
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1187
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    const v1, 0x7f02005a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1188
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1202
    :goto_1
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->sendAccessibilityEvent(I)V

    .line 1203
    return-void

    .line 1175
    :cond_0
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v3, v2}, Lcom/android/phone/SomcContactTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1193
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1194
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1195
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1198
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0, p3}, Lcom/android/phone/LargeCallView;->setText(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 1199
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1200
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setForegroundCallPhoto(I)V
    .locals 5
    .parameter "typeOfPhoto"

    .prologue
    const/4 v3, 0x1

    .line 786
    const/4 v1, 0x1

    .line 787
    .local v1, success:Z
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v2, v3}, Lcom/android/phone/SomcContactPicView;->setFrameVisible(Z)V

    .line 789
    if-ne p1, v3, :cond_0

    .line 790
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const v3, 0x7f02000a

    invoke-virtual {v2, v3}, Lcom/android/phone/SomcContactPicView;->setImage(I)V

    .line 805
    :goto_0
    if-eqz v1, :cond_5

    .line 806
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/SomcContactPicView;->setVisibility(I)V

    .line 810
    :goto_1
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v2}, Lcom/android/phone/SomcContactPicView;->invalidate()V

    .line 814
    :goto_2
    return-void

    .line 791
    :cond_0
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 792
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/SomcContactPicView;->setFrameVisible(Z)V

    .line 793
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const v3, 0x7f02000b

    invoke-virtual {v2, v3}, Lcom/android/phone/SomcContactPicView;->setImage(I)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 811
    :catch_0
    move-exception v0

    .line 812
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v2, "LargeCallView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setForegroundCallPhoto failed ! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 794
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 795
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/SomcContactPicView;->setFrameVisible(Z)V

    .line 796
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const v3, 0x7f02000d

    invoke-virtual {v2, v3}, Lcom/android/phone/SomcContactPicView;->setImage(I)V

    goto :goto_0

    .line 797
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_3

    .line 798
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Lcom/android/phone/SomcContactPicView;->setImage(I)V

    goto :goto_0

    .line 800
    :cond_3
    sget-boolean v2, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v2, :cond_4

    const-string v2, "Unknown type of photo for foreground call."

    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    .line 801
    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    .line 808
    :cond_5
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/SomcContactPicView;->setVisibility(I)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V
    .locals 4
    .parameter "photo"

    .prologue
    .line 818
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setFrameVisible(Z)V

    .line 820
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v1, p1}, Lcom/android/phone/SomcContactPicView;->setImage(Landroid/graphics/drawable/Drawable;)V

    .line 821
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/SomcContactPicView;->setVisibility(I)V

    .line 822
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v1}, Lcom/android/phone/SomcContactPicView;->invalidate()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    return-void

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Ljava/lang/OutOfMemoryError;
    const-string v1, "LargeCallView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setForegroundCallPhoto failed ! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setForegroundRedirectingCallInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 1214
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 1215
    invoke-direct {p0, p2}, Lcom/android/phone/LargeCallView;->formatNoBidiString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1216
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mRedirectingNameOrNumber:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object p1, v0

    :cond_0
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1217
    iget-object v3, p0, Lcom/android/phone/LargeCallView;->mRedirectingdNumberTextView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    move-object v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1219
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1223
    :goto_1
    return-void

    :cond_1
    move-object v1, v0

    .line 1217
    goto :goto_0

    .line 1221
    :cond_2
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRedirectingCallMessage:Landroid/widget/TextView;

    const v1, 0x7f0b0114

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method public setSnsTextAndIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 1237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1238
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsInfo:Lcom/android/phone/SomcSnsTextView;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcSnsTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1239
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1240
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1251
    :goto_0
    return-void

    .line 1242
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsInfo:Lcom/android/phone/SomcSnsTextView;

    invoke-virtual {v0, p1}, Lcom/android/phone/SomcSnsTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    if-eqz p2, :cond_1

    .line 1244
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1248
    :goto_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    const v1, 0x7f020019

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    goto :goto_0

    .line 1246
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsIcon:Landroid/widget/ImageView;

    const v1, 0x7f02001f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setSoundRoutingOptionsVisibility(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 231
    const v0, 0x7f0700b1

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 232
    return-void
.end method

.method public showAllCallsEndedLayout(Ljava/lang/String;Z)V
    .locals 5
    .parameter "disconnectMessage"
    .parameter "animatePanelHide"

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 646
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-direct {p0, v0, v3}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;Z)V

    .line 647
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 648
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 649
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, p2}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 650
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcIncomingCallView;->setVisibility(I)V

    .line 651
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 652
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 653
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 654
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 655
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConnectingProgressBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 656
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 657
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->refreshVisibility(Landroid/widget/TextView;)V

    .line 659
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 660
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 661
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcContactTextView;->setVisibility(I)V

    .line 662
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 665
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 666
    return-void
.end method

.method public showConferenceCallLayout(ZZ)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const v4, 0x7f0b00a7

    const/16 v3, 0x8

    .line 1031
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallItemList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1032
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 1033
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1035
    iput-boolean p2, p0, Lcom/android/phone/LargeCallView;->mCanSeparate:Z

    .line 1038
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1039
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    sget-object v2, Lcom/android/phone/LargeCallView;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1042
    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1043
    const v0, 0x7f0b00a9

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 1044
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 1045
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1046
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1047
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 1049
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallViewMode:Lcom/android/phone/CallView$CallViewMode;

    sget-object v1, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    if-ne v0, v1, :cond_2

    .line 1051
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->MANAGE_CONFERENCE_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 1057
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 1061
    :cond_1
    :goto_1
    return-void

    .line 1053
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->showNormalConferenceCallView()V

    .line 1054
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/LargeCallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1059
    :cond_3
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "Error: In Conference view without conference participants data"

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->log(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public showEndingLastCallLayout(I)V
    .locals 2
    .parameter "endCallInfoResId"

    .prologue
    const/16 v1, 0x8

    .line 637
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->isDtmfDialPadOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->closeDtmfDialPad()V

    .line 638
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 639
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConnectingProgressBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 640
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 641
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 642
    return-void
.end method

.method public showIncomingCallLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 468
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 470
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->closeDtmfDialPad()V

    .line 472
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-direct {p0, v0, v2}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;Z)V

    .line 473
    const v0, 0x7f0b00a5

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 474
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 475
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 476
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->refreshVisibility(Landroid/widget/TextView;)V

    .line 477
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 478
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 482
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 484
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcContactTextView;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 486
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 487
    const v0, 0x7f0b00a6

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 489
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 492
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mEndCallLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 497
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcIncomingCallView;->setVisibility(I)V

    .line 498
    return-void
.end method

.method public showSingleCallLayout(ZZZ)V
    .locals 5
    .parameter "isHeldCall"
    .parameter "isEmergency"
    .parameter "isDialing"

    .prologue
    const/4 v4, 0x4

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 581
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 583
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0, v4}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 586
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 587
    const v0, 0x7f0b00a6

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 588
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, p2}, Lcom/android/phone/SomcInCallButtonPanel;->setIsEmergencyCall(Z)V

    .line 590
    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 592
    if-nez p3, :cond_0

    if-nez p1, :cond_0

    .line 593
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 598
    :goto_0
    if-eqz p1, :cond_1

    .line 599
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 600
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 601
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->makeTextViewSingleLine(Landroid/widget/TextView;)V

    .line 602
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 603
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 604
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 606
    const v0, 0x7f0b00a4

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 607
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 620
    :goto_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcContactTextView;->setVisibility(I)V

    .line 622
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 623
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcContactPicView;->setVisibility(I)V

    .line 624
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v0}, Lcom/android/phone/SomcContactPicView;->invalidate()V

    .line 625
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcIncomingCallView;->setVisibility(I)V

    .line 627
    if-eqz p3, :cond_2

    .line 628
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->showCallingProgress()V

    .line 632
    :goto_2
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 633
    return-void

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 609
    :cond_1
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 610
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 611
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 612
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 614
    const-string v0, ""

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 615
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 616
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->refreshVisibility(Landroid/widget/TextView;)V

    goto :goto_1

    .line 630
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    goto :goto_2
.end method

.method public showSipCallingProgress()V
    .locals 2

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcInCallButtonPanel;->setInOutgoingCallState(Z)V

    .line 761
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mView:Landroid/view/View;

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0b00aa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 762
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConnectingProgressBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 763
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcIncomingCallView;->setVisibility(I)V

    .line 764
    return-void
.end method

.method public showTwoCallsLayout(ZZZ)V
    .locals 9
    .parameter "isEmergency"
    .parameter "mergeIsPossible"
    .parameter "isForegroundConferenceCall"

    .prologue
    const/16 v8, 0xff

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    .line 674
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 677
    sget-object v2, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v2}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 679
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->makeTextViewSingleLine(Landroid/widget/TextView;)V

    .line 680
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v2, v8}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 681
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 682
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 683
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v2, v7}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 684
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 685
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 686
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 687
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 688
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 690
    const-string v2, ""

    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setStateInformationText(Ljava/lang/String;)V

    .line 691
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 693
    if-eqz p2, :cond_0

    .line 694
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->enableMergeCallsButton()V

    .line 698
    :goto_0
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v2, v4}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 699
    iget-object v5, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    if-eqz p3, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 701
    if-eqz p3, :cond_2

    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mConferenceCallItemList:Ljava/util/List;

    if-eqz v2, :cond_2

    .line 703
    iput-boolean v4, p0, Lcom/android/phone/LargeCallView;->mCanSeparate:Z

    .line 706
    new-array v1, v6, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mConferenceCallItemList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 707
    .local v1, values:[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->getContext()Landroid/content/Context;

    move-result-object v2

    const v5, 0x7f0b00a7

    invoke-virtual {v2, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v5, Lcom/android/phone/LargeCallView;->SRC_TAGS:[Ljava/lang/String;

    invoke-static {v2, v5, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 710
    .local v0, conferenceParticipantsText:Ljava/lang/CharSequence;
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v2, v8}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 713
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v2, v6}, Lcom/android/phone/SomcInCallButtonPanel;->show(Z)V

    .line 714
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 715
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 716
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 717
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 718
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v2, v4}, Lcom/android/phone/SomcContactTextView;->setVisibility(I)V

    .line 719
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 721
    const v2, 0x7f0b00a9

    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 723
    invoke-virtual {p0, v7}, Lcom/android/phone/LargeCallView;->setForegroundCallPhoto(I)V

    .line 731
    .end local v0           #conferenceParticipantsText:Ljava/lang/CharSequence;
    .end local v1           #values:[Ljava/lang/String;
    :goto_2
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v2, v3}, Lcom/android/phone/SomcIncomingCallView;->setVisibility(I)V

    .line 732
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->hideRejectMsgList()V

    .line 733
    return-void

    .line 696
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->disableMergeCallsButton()V

    goto :goto_0

    :cond_1
    move v2, v4

    .line 699
    goto :goto_1

    .line 725
    :cond_2
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoTextView:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->refreshVisibility(Landroid/widget/TextView;)V

    .line 726
    const v2, 0x7f0b00a6

    invoke-direct {p0, v2}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 727
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v2, v3}, Lcom/android/phone/SomcContactPicView;->setVisibility(I)V

    .line 728
    iget-object v2, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    invoke-virtual {v2}, Lcom/android/phone/SomcContactPicView;->invalidate()V

    goto :goto_2
.end method

.method public showWaitingCallLayout(ZZ)V
    .locals 4
    .parameter "hideAnswer"
    .parameter "showEndHeldCallAt3rdIncomingCall"

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 537
    invoke-direct {p0}, Lcom/android/phone/LargeCallView;->hideCallingProgress()V

    .line 539
    sget-object v0, Lcom/android/phone/CallView$CallViewMode;->NORMAL_MODE:Lcom/android/phone/CallView$CallViewMode;

    invoke-virtual {p0, v0}, Lcom/android/phone/LargeCallView;->setCallViewMode(Lcom/android/phone/CallView$CallViewMode;)V

    .line 540
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->makeTextViewSingleLine(Landroid/widget/TextView;)V

    .line 541
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mRetrieveCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mTypeOfNumberTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mAdditionalCallInfoTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->refreshVisibility(Landroid/widget/TextView;)V

    .line 544
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipUriTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSipIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mSnsPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mNameOrNumberFGCall:Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcContactTextView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mMainCallPhoto:Lcom/android/phone/SomcContactPicView;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Lcom/android/phone/SomcContactPicView;->setAlpha(I)V

    .line 550
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mConferenceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 551
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mIncomingCallView:Lcom/android/phone/SomcIncomingCallView;

    invoke-virtual {v0, v3}, Lcom/android/phone/SomcIncomingCallView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mCallTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 553
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mHeldCallPanel:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 554
    const v0, 0x7f0b00a6

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setEndCallButtonText(I)V

    .line 555
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mButtonPanel:Lcom/android/phone/SomcInCallButtonPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/SomcInCallButtonPanel;->hide(Z)V

    .line 556
    invoke-virtual {p0}, Lcom/android/phone/LargeCallView;->closeDtmfDialPad()V

    .line 558
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0, v2}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->setVisibility(I)V

    .line 559
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mWaitingCallPanel:Lcom/android/phone/LargeCallView$WaitingCallPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/LargeCallView$WaitingCallPanel;->showWaitingCall(ZZ)V

    .line 561
    const v0, 0x7f0b00a5

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setStateInformationText(I)V

    .line 562
    iget-object v0, p0, Lcom/android/phone/LargeCallView;->mInformationBox:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 564
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/LargeCallView;->setRedirectingViewsVisibile(Z)V

    .line 565
    return-void
.end method
