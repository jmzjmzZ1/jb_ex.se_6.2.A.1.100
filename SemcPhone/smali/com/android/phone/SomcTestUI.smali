.class public Lcom/android/phone/SomcTestUI;
.super Landroid/app/Activity;
.source "SomcTestUI.java"


# instance fields
.field private mBluetoothStatusVisible:Z

.field private mCallView:Lcom/android/phone/CallView;

.field private mCurrentCallState:I

.field private mIsShowingLargePhoto:Z

.field private mLargePhoto:Landroid/graphics/drawable/Drawable;

.field private mSmallPhoto:Landroid/graphics/drawable/Drawable;

.field mcallView:Lcom/android/phone/CallView$CallViewActionListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 52
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/phone/SomcTestUI;->mCurrentCallState:I

    .line 60
    iput-boolean v1, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    .line 62
    iput-boolean v1, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    .line 77
    new-instance v0, Lcom/android/phone/SomcTestUI$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcTestUI$1;-><init>(Lcom/android/phone/SomcTestUI;)V

    iput-object v0, p0, Lcom/android/phone/SomcTestUI;->mcallView:Lcom/android/phone/CallView$CallViewActionListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcTestUI;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/SomcTestUI;)Lcom/android/phone/CallView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    return-object v0
.end method

.method private getConferenceList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/phone/CallView$ConferenceCallItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 244
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 246
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/phone/CallView$ConferenceCallItem;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v3, 0x5

    if-ge v0, v3, :cond_0

    .line 247
    invoke-static {}, Lcom/android/phone/CallView$ConferenceCallItem;->createConferenceCallItem()Lcom/android/phone/CallView$ConferenceCallItem;

    move-result-object v1

    .line 249
    .local v1, item:Lcom/android/phone/CallView$ConferenceCallItem;
    const-string v3, "Jan Banan"

    iput-object v3, v1, Lcom/android/phone/CallView$ConferenceCallItem;->name:Ljava/lang/String;

    .line 250
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 252
    .end local v1           #item:Lcom/android/phone/CallView$ConferenceCallItem;
    :cond_0
    return-object v2
.end method

.method private setBluetoothView(Z)V
    .locals 2
    .parameter "isVisible"

    .prologue
    .line 260
    iget-object v1, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setSoundRoutingOptionsVisibility(I)V

    .line 261
    return-void

    .line 260
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private update()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 171
    iget v0, p0, Lcom/android/phone/SomcTestUI;->mCurrentCallState:I

    packed-switch v0, :pswitch_data_0

    .line 237
    :goto_0
    return-void

    .line 173
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v2, v2, v2}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 174
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v1, "Jan Banan"

    const-string v2, "88888850"

    const-string v3, "Mobile"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 176
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v1, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 177
    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-direct {p0, v0}, Lcom/android/phone/SomcTestUI;->setBluetoothView(Z)V

    goto :goto_0

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mSmallPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 181
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v2, v3, v2}, Lcom/android/phone/CallView;->showTwoCallsLayout(ZZZ)V

    .line 182
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v1, "Jan Banan"

    const-string v2, "88888850"

    const-string v3, "Mobile"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v1, "Josefin Apelsin"

    const-string v2, "1234567"

    const-string v3, ""

    const-string v4, "Mobile"

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/phone/CallView;->setBackgroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    :goto_2
    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 185
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v1, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 186
    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-direct {p0, v0}, Lcom/android/phone/SomcTestUI;->setBluetoothView(Z)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mSmallPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 190
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v2, v2, v3}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 191
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v1, "Jan Banan"

    const-string v2, "88888850"

    const-string v3, "Mobile"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 193
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v1, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 194
    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-direct {p0, v0}, Lcom/android/phone/SomcTestUI;->setBluetoothView(Z)V

    goto/16 :goto_0

    .line 192
    :cond_2
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mSmallPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_3

    .line 198
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0}, Lcom/android/phone/CallView;->showIncomingCallLayout()V

    .line 199
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v1, "Jan Banan"

    const-string v2, "88888850"

    const-string v3, "Mobile"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v1, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    :goto_4
    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 201
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/SomcRejectMsgManager;->getRejectMsgs()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->initRejectMsgList(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 200
    :cond_3
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mSmallPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_4

    .line 206
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v2, v2}, Lcom/android/phone/CallView;->showWaitingCallLayout(ZZ)V

    .line 207
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v1, "Jan Banan"

    const-string v2, "88888850"

    const-string v3, "Mobile"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v1, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    :goto_5
    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 209
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v1, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 210
    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-direct {p0, v0}, Lcom/android/phone/SomcTestUI;->setBluetoothView(Z)V

    .line 211
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-static {}, Lcom/android/phone/SomcRejectMsgManager;->getInstance()Lcom/android/phone/SomcRejectMsgManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/SomcRejectMsgManager;->getRejectMsgs()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->initRejectMsgList(Ljava/util/HashMap;)V

    goto/16 :goto_0

    .line 208
    :cond_4
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mSmallPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 216
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->getConferenceList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setConferenceListInfo(Ljava/util/List;)V

    .line 217
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v2, v3}, Lcom/android/phone/CallView;->showConferenceCallLayout(ZZ)V

    .line 218
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {p0}, Lcom/android/phone/SomcTestUI;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    .line 220
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v1, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setBluetoothHeadsetIsConnected(Z)V

    .line 221
    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    invoke-direct {p0, v0}, Lcom/android/phone/SomcTestUI;->setBluetoothView(Z)V

    goto/16 :goto_0

    .line 225
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v1, "Call ended"

    invoke-virtual {v0, v1, v3}, Lcom/android/phone/CallView;->showAllCallsEndedLayout(Ljava/lang/String;Z)V

    .line 226
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v1, "Jan Banan"

    const-string v2, "88888850"

    const-string v3, "Mobile"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget-object v1, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    :goto_6
    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mSmallPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_6

    .line 231
    :pswitch_7
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {v0, v3, v2, v2}, Lcom/android/phone/CallView;->showSingleCallLayout(ZZZ)V

    .line 232
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    const-string v1, "Jan Banan"

    const-string v2, "88888850"

    const-string v3, "Mobile"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/phone/CallView;->setForegroundCallInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    :goto_7
    invoke-virtual {v1, v0}, Lcom/android/phone/CallView;->setForegroundCallPhoto(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mSmallPhoto:Landroid/graphics/drawable/Drawable;

    goto :goto_7

    .line 171
    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_2
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    new-instance v0, Lcom/android/phone/LargeCallView;

    invoke-direct {v0, p0}, Lcom/android/phone/LargeCallView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    .line 69
    invoke-virtual {p0}, Lcom/android/phone/SomcTestUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcTestUI;->mSmallPhoto:Landroid/graphics/drawable/Drawable;

    .line 70
    invoke-virtual {p0}, Lcom/android/phone/SomcTestUI;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcTestUI;->mLargePhoto:Landroid/graphics/drawable/Drawable;

    .line 72
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    invoke-virtual {p0, v0}, Lcom/android/phone/SomcTestUI;->setContentView(Landroid/view/View;)V

    .line 73
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->update()V

    .line 74
    iget-object v0, p0, Lcom/android/phone/SomcTestUI;->mCallView:Lcom/android/phone/CallView;

    iget-object v1, p0, Lcom/android/phone/SomcTestUI;->mcallView:Lcom/android/phone/CallView$CallViewActionListener;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallView;->setActionListener(Lcom/android/phone/CallView$CallViewActionListener;)V

    .line 75
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 161
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 164
    :goto_0
    return v0

    .line 116
    :pswitch_0
    const/16 v0, 0x65

    iput v0, p0, Lcom/android/phone/SomcTestUI;->mCurrentCallState:I

    .line 163
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/SomcTestUI;->update()V

    .line 164
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 120
    :pswitch_1
    const/16 v0, 0x66

    iput v0, p0, Lcom/android/phone/SomcTestUI;->mCurrentCallState:I

    goto :goto_1

    .line 124
    :pswitch_2
    const/16 v0, 0x6a

    iput v0, p0, Lcom/android/phone/SomcTestUI;->mCurrentCallState:I

    goto :goto_1

    .line 128
    :pswitch_3
    const/16 v0, 0x67

    iput v0, p0, Lcom/android/phone/SomcTestUI;->mCurrentCallState:I

    goto :goto_1

    .line 132
    :pswitch_4
    const/16 v0, 0x68

    iput v0, p0, Lcom/android/phone/SomcTestUI;->mCurrentCallState:I

    goto :goto_1

    .line 136
    :pswitch_5
    const/16 v0, 0x69

    iput v0, p0, Lcom/android/phone/SomcTestUI;->mCurrentCallState:I

    goto :goto_1

    .line 140
    :pswitch_6
    const/16 v0, 0x6c

    iput v0, p0, Lcom/android/phone/SomcTestUI;->mCurrentCallState:I

    goto :goto_1

    .line 144
    :pswitch_7
    const/16 v0, 0x6b

    iput v0, p0, Lcom/android/phone/SomcTestUI;->mCurrentCallState:I

    goto :goto_1

    .line 148
    :pswitch_8
    iput-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    goto :goto_1

    .line 152
    :pswitch_9
    iput-boolean v1, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    goto :goto_1

    .line 157
    :pswitch_a
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_0

    :goto_2
    iput-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    goto :goto_1

    :cond_0
    move v0, v1

    goto :goto_2

    .line 114
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_a
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 88
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 89
    const-string v0, "One call"

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 90
    const/4 v0, 0x6

    const-string v1, "Two call"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 91
    const/4 v0, 0x2

    const-string v1, "Outgoing call"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 92
    const/4 v0, 0x3

    const-string v1, "Incoming call"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 93
    const/4 v0, 0x4

    const-string v1, "Waiting call"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 94
    const/4 v0, 0x5

    const-string v1, "Conference call"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 95
    const/4 v0, 0x7

    const-string v1, "All calls ended"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 96
    const/16 v0, 0x8

    const-string v1, "Held call"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 98
    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mIsShowingLargePhoto:Z

    if-eqz v0, :cond_0

    .line 99
    const/16 v0, 0xa

    const-string v1, "Small photo"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 104
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/SomcTestUI;->mBluetoothStatusVisible:Z

    if-eqz v0, :cond_1

    .line 105
    const/16 v0, 0xc

    const-string v1, "Disconnect Bluetooth"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 109
    :goto_1
    return v3

    .line 101
    :cond_0
    const/16 v0, 0x9

    const-string v1, "Large photo"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 107
    :cond_1
    const/16 v0, 0xb

    const-string v1, "Connect Bluetooth"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_1
.end method
