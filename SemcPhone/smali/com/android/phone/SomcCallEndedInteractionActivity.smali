.class public Lcom/android/phone/SomcCallEndedInteractionActivity;
.super Landroid/app/Activity;
.source "SomcCallEndedInteractionActivity.java"


# instance fields
.field private mAddToContacts:Landroid/widget/Button;

.field private mCallEndedText:Landroid/widget/TextView;

.field private mContactImage:Lcom/android/phone/SomcContactPicView;

.field private final mHandler:Landroid/os/Handler;

.field private mHungupIcon:Landroid/widget/ImageView;

.field private final mImageLoadCompleteListener:Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mPhoneNumber:Ljava/lang/String;

.field private mSendSmsView:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 75
    new-instance v0, Lcom/android/phone/SomcCallEndedInteractionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcCallEndedInteractionActivity$1;-><init>(Lcom/android/phone/SomcCallEndedInteractionActivity;)V

    iput-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mHandler:Landroid/os/Handler;

    .line 242
    new-instance v0, Lcom/android/phone/SomcCallEndedInteractionActivity$5;

    invoke-direct {v0, p0}, Lcom/android/phone/SomcCallEndedInteractionActivity$5;-><init>(Lcom/android/phone/SomcCallEndedInteractionActivity;)V

    iput-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mImageLoadCompleteListener:Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/SomcCallEndedInteractionActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mHungupIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/SomcCallEndedInteractionActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mCallEndedText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/SomcCallEndedInteractionActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/SomcCallEndedInteractionActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mPhoneNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/SomcCallEndedInteractionActivity;)Lcom/android/phone/SomcContactPicView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mContactImage:Lcom/android/phone/SomcContactPicView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/SomcCallEndedInteractionActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mLoadingPersonUri:Landroid/net/Uri;

    return-object v0
.end method

.method private asyncUpdateContactImage(J)V
    .locals 4
    .parameter "personId"

    .prologue
    .line 232
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mLoadingPersonUri:Landroid/net/Uri;

    .line 233
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    .line 234
    const-string v0, "SomcCallEndedInteractionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "asyncUpdateContactImage  To start LoadImageTask, personId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ,personUri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mLoadingPersonUri:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mImageLoadCompleteListener:Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;

    iget-object v3, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 240
    return-void
.end method

.method private initComponents()V
    .locals 3

    .prologue
    .line 154
    const v1, 0x7f070010

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/phone/SomcContactPicView;

    iput-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mContactImage:Lcom/android/phone/SomcContactPicView;

    .line 155
    const v1, 0x7f070016

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mHungupIcon:Landroid/widget/ImageView;

    .line 156
    const v1, 0x7f070017

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mCallEndedText:Landroid/widget/TextView;

    .line 157
    const v1, 0x7f070018

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 158
    .local v0, callBackView:Landroid/widget/LinearLayout;
    const v1, 0x7f070019

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mSendSmsView:Landroid/widget/LinearLayout;

    .line 159
    const v1, 0x7f07001a

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mAddToContacts:Landroid/widget/Button;

    .line 161
    new-instance v1, Lcom/android/phone/SomcCallEndedInteractionActivity$2;

    invoke-direct {v1, p0}, Lcom/android/phone/SomcCallEndedInteractionActivity$2;-><init>(Lcom/android/phone/SomcCallEndedInteractionActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    iget-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mSendSmsView:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/phone/SomcCallEndedInteractionActivity$3;

    invoke-direct {v2, p0}, Lcom/android/phone/SomcCallEndedInteractionActivity$3;-><init>(Lcom/android/phone/SomcCallEndedInteractionActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mAddToContacts:Landroid/widget/Button;

    new-instance v2, Lcom/android/phone/SomcCallEndedInteractionActivity$4;

    invoke-direct {v2, p0}, Lcom/android/phone/SomcCallEndedInteractionActivity$4;-><init>(Lcom/android/phone/SomcCallEndedInteractionActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    return-void
.end method

.method private internalResolveIntent()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    .line 192
    invoke-virtual {p0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 193
    .local v2, intent:Landroid/content/Intent;
    if-nez v2, :cond_1

    const/4 v1, 0x0

    .line 194
    .local v1, extras:Landroid/os/Bundle;
    :goto_0
    if-nez v1, :cond_2

    .line 195
    sget-boolean v7, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v7, :cond_0

    .line 196
    const-string v7, "SomcCallEndedInteractionActivity"

    const-string v8, "internalResolveIntent invalid extras in intent, finish!"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->finish()V

    .line 229
    :goto_1
    return-void

    .line 193
    .end local v1           #extras:Landroid/os/Bundle;
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    goto :goto_0

    .line 201
    .restart local v1       #extras:Landroid/os/Bundle;
    :cond_2
    const-string v7, "nameOrNumber"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 202
    .local v3, nameOrNumber:Ljava/lang/String;
    const-string v7, "typeAndNumber"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 203
    .local v6, typeAndNumber:Ljava/lang/String;
    const-string v7, "personId"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 204
    .local v4, personId:J
    const-string v7, "callDuration"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, callDuration:Ljava/lang/String;
    const-string v7, "number"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mPhoneNumber:Ljava/lang/String;

    .line 207
    const v7, 0x7f070011

    invoke-virtual {p0, v7}, Lcom/android/phone/SomcCallEndedInteractionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/phone/SomcContactTextView;

    invoke-virtual {v7, v3}, Lcom/android/phone/SomcContactTextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    const v7, 0x7f070012

    invoke-virtual {p0, v7}, Lcom/android/phone/SomcCallEndedInteractionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 209
    const v7, 0x7f070014

    invoke-virtual {p0, v7}, Lcom/android/phone/SomcCallEndedInteractionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 211
    iget-object v8, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mAddToContacts:Landroid/widget/Button;

    const-string v7, "unknownName"

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v8, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 214
    iget-object v7, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mPhoneNumber:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/phone/SomcPhoneUtils;->isMessagingEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 215
    iget-object v7, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mSendSmsView:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 219
    :cond_3
    invoke-direct {p0, v4, v5}, Lcom/android/phone/SomcCallEndedInteractionActivity;->asyncUpdateContactImage(J)V

    .line 222
    iget-object v7, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    iget-object v7, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v7, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    iget-object v7, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 228
    iget-object v7, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v7, v11, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    .line 211
    :cond_4
    const/4 v7, 0x4

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 99
    sget-boolean v1, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "SomcCallEndedInteractionActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate()... savedInstanceState:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-static {p0}, Lcom/android/phone/SomcPhoneUtils;->updateRequestedOrientation(Landroid/app/Activity;)V

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 103
    const v1, 0x7f030001

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->setContentView(I)V

    .line 110
    invoke-virtual {p0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x48

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 114
    const v1, 0x7f040001

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 116
    .local v0, animation:Landroid/view/animation/Animation;
    if-eqz v0, :cond_1

    .line 117
    const v1, 0x7f07000e

    invoke-virtual {p0, v1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 119
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->initComponents()V

    .line 120
    invoke-direct {p0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->internalResolveIntent()V

    .line 123
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForNewRingingConnection(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 129
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcCallEndedInteractionActivity"

    const-string v1, "onDestroy()... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x48

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 133
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/SomcCallEndedInteractionActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForNewRingingConnection(Landroid/os/Handler;)V

    .line 134
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 135
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 139
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 140
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SomcCallEndedInteractionActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent   intent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/SomcCallEndedInteractionActivity;->setIntent(Landroid/content/Intent;)V

    .line 150
    invoke-direct {p0}, Lcom/android/phone/SomcCallEndedInteractionActivity;->internalResolveIntent()V

    .line 151
    return-void
.end method
