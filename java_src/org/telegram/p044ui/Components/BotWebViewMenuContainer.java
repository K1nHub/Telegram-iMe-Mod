package org.telegram.p044ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.os.Bundle;
import android.text.Editable;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.core.graphics.ColorUtils;
import androidx.core.util.Consumer;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.recyclerview.widget.ChatListItemAnimator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.Callbacks$Callback1;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.json.JSONObject;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserObject;
import org.telegram.p044ui.ActionBar.ActionBarMenuItem;
import org.telegram.p044ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.ActionBar.INavigationLayout;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ChatActivity;
import org.telegram.p044ui.Components.BotWebViewContainer;
import org.telegram.p044ui.Components.BotWebViewMenuContainer;
import org.telegram.p044ui.Components.ChatAttachAlertBotWebViewLayout;
import org.telegram.p044ui.DialogsActivity;
import org.telegram.p044ui.PaymentFormActivity;
import org.telegram.p044ui.TopicsFragment;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$TL_dataJSON;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_prolongWebView;
import org.telegram.tgnet.TLRPC$TL_messages_requestWebView;
import org.telegram.tgnet.TLRPC$TL_payments_paymentForm;
import org.telegram.tgnet.TLRPC$TL_payments_paymentReceipt;
import org.telegram.tgnet.TLRPC$TL_webViewResultUrl;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.BotWebViewMenuContainer */
/* loaded from: classes6.dex */
public class BotWebViewMenuContainer extends FrameLayout implements NotificationCenter.NotificationCenterDelegate {
    private static final SimpleFloatPropertyCompat<BotWebViewMenuContainer> ACTION_BAR_TRANSITION_PROGRESS_VALUE = new SimpleFloatPropertyCompat("actionBarTransitionProgress", BotWebViewMenuContainer$$ExternalSyntheticLambda21.INSTANCE, BotWebViewMenuContainer$$ExternalSyntheticLambda22.INSTANCE).setMultiplier(100.0f);
    private C3356ActionBar.ActionBarMenuOnItemClick actionBarOnItemClick;
    private Paint actionBarPaint;
    private float actionBarTransitionProgress;
    private Paint backgroundPaint;
    private long botId;
    private ActionBarMenuItem botMenuItem;
    private String botUrl;
    private SpringAnimation botWebViewButtonAnimator;
    private boolean botWebViewButtonWasVisible;
    private int currentAccount;
    private Paint dimPaint;
    private boolean dismissed;
    private Runnable globalOnDismissListener;
    private boolean ignoreLayout;
    private boolean ignoreMeasure;
    private boolean isLoaded;
    private Paint linePaint;
    private boolean needCloseConfirmation;
    private int overrideActionBarBackground;
    private float overrideActionBarBackgroundProgress;
    private boolean overrideBackgroundColor;
    private ChatActivityEnterView parentEnterView;
    private Runnable pollRunnable;
    private ChatAttachAlertBotWebViewLayout.WebProgressView progressView;
    private long queryId;
    private MessageObject savedEditMessageObject;
    private Editable savedEditText;
    private MessageObject savedReplyMessageObject;
    private ActionBarMenuSubItem settingsItem;
    private SpringAnimation springAnimation;
    private ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer swipeContainer;
    private Boolean wasLightStatusBar;
    private BotWebViewContainer webViewContainer;
    private BotWebViewContainer.Delegate webViewDelegate;
    private ValueAnimator webViewScrollAnimator;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$static$1(BotWebViewMenuContainer botWebViewMenuContainer, float f) {
        botWebViewMenuContainer.actionBarTransitionProgress = f;
        botWebViewMenuContainer.invalidate();
        botWebViewMenuContainer.invalidateActionBar();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$4() {
        if (this.dismissed) {
            return;
        }
        TLRPC$TL_messages_prolongWebView tLRPC$TL_messages_prolongWebView = new TLRPC$TL_messages_prolongWebView();
        tLRPC$TL_messages_prolongWebView.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.botId);
        tLRPC$TL_messages_prolongWebView.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.botId);
        tLRPC$TL_messages_prolongWebView.query_id = this.queryId;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_prolongWebView, new RequestDelegate() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda19
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BotWebViewMenuContainer.this.lambda$new$3(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                BotWebViewMenuContainer.this.lambda$new$2(tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(TLRPC$TL_error tLRPC$TL_error) {
        if (this.dismissed) {
            return;
        }
        if (tLRPC$TL_error != null) {
            dismiss();
        } else {
            AndroidUtilities.runOnUIThread(this.pollRunnable, 60000L);
        }
    }

    private void checkBotMenuItem() {
        if (this.botMenuItem == null) {
            ActionBarMenuItem addItem = this.parentEnterView.getParentFragment().getActionBar().createMenu().addItem(1000, C3290R.C3292drawable.ic_ab_other);
            this.botMenuItem = addItem;
            addItem.setVisibility(8);
            this.botMenuItem.addSubItem(C3290R.C3293id.menu_reload_page, C3290R.C3292drawable.msg_retry, LocaleController.getString(C3290R.string.BotWebViewReloadPage));
        }
    }

    public BotWebViewMenuContainer(Context context, final ChatActivityEnterView chatActivityEnterView) {
        super(context);
        this.dimPaint = new Paint();
        this.backgroundPaint = new Paint(1);
        this.actionBarPaint = new Paint(1);
        this.linePaint = new Paint();
        this.pollRunnable = new Runnable() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                BotWebViewMenuContainer.this.lambda$new$4();
            }
        };
        this.parentEnterView = chatActivityEnterView;
        final C3356ActionBar actionBar = chatActivityEnterView.getParentFragment().getActionBar();
        this.actionBarOnItemClick = actionBar.getActionBarMenuOnItemClick();
        BotWebViewContainer botWebViewContainer = new BotWebViewContainer(context, chatActivityEnterView.getParentFragment().getResourceProvider(), getColor(Theme.key_windowBackgroundWhite));
        this.webViewContainer = botWebViewContainer;
        C41311 c41311 = new C41311(chatActivityEnterView, actionBar);
        this.webViewDelegate = c41311;
        botWebViewContainer.setDelegate(c41311);
        this.linePaint.setStyle(Paint.Style.FILL_AND_STROKE);
        this.linePaint.setStrokeWidth(AndroidUtilities.m54dp(4));
        this.linePaint.setStrokeCap(Paint.Cap.ROUND);
        this.dimPaint.setColor(1073741824);
        ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = new ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer(context) { // from class: org.telegram.ui.Components.BotWebViewMenuContainer.2
            /* JADX WARN: Removed duplicated region for block: B:10:0x001f  */
            /* JADX WARN: Removed duplicated region for block: B:13:0x0029  */
            @Override // android.widget.FrameLayout, android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected void onMeasure(int r6, int r7) {
                /*
                    r5 = this;
                    int r0 = android.view.View.MeasureSpec.getSize(r7)
                    boolean r1 = org.telegram.messenger.AndroidUtilities.isTablet()
                    r2 = 5
                    if (r1 != 0) goto L19
                    android.graphics.Point r1 = org.telegram.messenger.AndroidUtilities.displaySize
                    int r3 = r1.x
                    int r1 = r1.y
                    if (r3 <= r1) goto L19
                    float r0 = (float) r0
                    r1 = 1080033280(0x40600000, float:3.5)
                    float r0 = r0 / r1
                    int r0 = (int) r0
                    goto L1c
                L19:
                    int r0 = r0 / r2
                    int r0 = r0 * 2
                L1c:
                    r1 = 0
                    if (r0 >= 0) goto L20
                    r0 = r1
                L20:
                    float r3 = r5.getOffsetY()
                    float r0 = (float) r0
                    int r3 = (r3 > r0 ? 1 : (r3 == r0 ? 0 : -1))
                    if (r3 == 0) goto L37
                    org.telegram.ui.Components.BotWebViewMenuContainer r3 = org.telegram.p044ui.Components.BotWebViewMenuContainer.this
                    r4 = 1
                    org.telegram.p044ui.Components.BotWebViewMenuContainer.access$1402(r3, r4)
                    r5.setOffsetY(r0)
                    org.telegram.ui.Components.BotWebViewMenuContainer r0 = org.telegram.p044ui.Components.BotWebViewMenuContainer.this
                    org.telegram.p044ui.Components.BotWebViewMenuContainer.access$1402(r0, r1)
                L37:
                    int r7 = android.view.View.MeasureSpec.getSize(r7)
                    int r0 = org.telegram.p044ui.ActionBar.C3356ActionBar.getCurrentActionBarHeight()
                    int r7 = r7 - r0
                    int r0 = org.telegram.messenger.AndroidUtilities.statusBarHeight
                    int r7 = r7 - r0
                    r0 = 24
                    int r0 = org.telegram.messenger.AndroidUtilities.m54dp(r0)
                    int r7 = r7 + r0
                    int r0 = org.telegram.messenger.AndroidUtilities.m54dp(r2)
                    int r7 = r7 - r0
                    r0 = 1073741824(0x40000000, float:2.0)
                    int r7 = android.view.View.MeasureSpec.makeMeasureSpec(r7, r0)
                    super.onMeasure(r6, r7)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.Components.BotWebViewMenuContainer.C41322.onMeasure(int, int):void");
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (BotWebViewMenuContainer.this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }
        };
        this.swipeContainer = webViewSwipeContainer;
        webViewSwipeContainer.setScrollListener(new Runnable() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda16
            @Override // java.lang.Runnable
            public final void run() {
                BotWebViewMenuContainer.this.lambda$new$5(actionBar);
            }
        });
        this.swipeContainer.setScrollEndListener(new Runnable() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                BotWebViewMenuContainer.this.lambda$new$6();
            }
        });
        this.swipeContainer.addView(this.webViewContainer);
        this.swipeContainer.setDelegate(new ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer.Delegate() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda20
            @Override // org.telegram.p044ui.Components.ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer.Delegate
            public final void onDismiss() {
                BotWebViewMenuContainer.this.lambda$new$7();
            }
        });
        this.swipeContainer.setTopActionBarOffsetY((C3356ActionBar.getCurrentActionBarHeight() + AndroidUtilities.statusBarHeight) - AndroidUtilities.m54dp(24));
        this.swipeContainer.setSwipeOffsetAnimationDisallowed(true);
        this.swipeContainer.setIsKeyboardVisible(new GenericProvider() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda17
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                Boolean lambda$new$8;
                lambda$new$8 = BotWebViewMenuContainer.lambda$new$8(ChatActivityEnterView.this, (Void) obj);
                return lambda$new$8;
            }
        });
        addView(this.swipeContainer, LayoutHelper.createFrame(-1, -1, 48, 0, 24, 0, 0));
        ChatAttachAlertBotWebViewLayout.WebProgressView webProgressView = new ChatAttachAlertBotWebViewLayout.WebProgressView(context, chatActivityEnterView.getParentFragment().getResourceProvider());
        this.progressView = webProgressView;
        addView(webProgressView, LayoutHelper.createFrame(-1, -2, 80, 0, 0, 0, 5));
        this.webViewContainer.setWebViewProgressListener(new Consumer() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda4
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                BotWebViewMenuContainer.this.lambda$new$10((Float) obj);
            }
        });
        setWillNotDraw(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.BotWebViewMenuContainer$1 */
    /* loaded from: classes6.dex */
    public class C41311 implements BotWebViewContainer.Delegate {
        final /* synthetic */ C3356ActionBar val$actionBar;
        final /* synthetic */ ChatActivityEnterView val$parentEnterView;

        @Override // org.telegram.p044ui.Components.BotWebViewContainer.Delegate
        public /* synthetic */ boolean isClipboardAvailable() {
            return BotWebViewContainer.Delegate.CC.$default$isClipboardAvailable(this);
        }

        @Override // org.telegram.p044ui.Components.BotWebViewContainer.Delegate
        public /* synthetic */ void onSendWebViewData(String str) {
            BotWebViewContainer.Delegate.CC.$default$onSendWebViewData(this, str);
        }

        @Override // org.telegram.p044ui.Components.BotWebViewContainer.Delegate
        public /* synthetic */ void onWebAppReady() {
            BotWebViewContainer.Delegate.CC.$default$onWebAppReady(this);
        }

        C41311(ChatActivityEnterView chatActivityEnterView, C3356ActionBar c3356ActionBar) {
            this.val$parentEnterView = chatActivityEnterView;
            this.val$actionBar = c3356ActionBar;
        }

        @Override // org.telegram.p044ui.Components.BotWebViewContainer.Delegate
        public void onCloseRequested(Runnable runnable) {
            BotWebViewMenuContainer.this.dismiss(runnable);
        }

        @Override // org.telegram.p044ui.Components.BotWebViewContainer.Delegate
        public void onWebAppSetupClosingBehavior(boolean z) {
            BotWebViewMenuContainer.this.needCloseConfirmation = z;
        }

        @Override // org.telegram.p044ui.Components.BotWebViewContainer.Delegate
        public void onWebAppSetActionBarColor(int i) {
            final int i2 = BotWebViewMenuContainer.this.overrideActionBarBackground;
            final int color = BotWebViewMenuContainer.this.getColor(i);
            if (i2 == 0) {
                BotWebViewMenuContainer.this.overrideActionBarBackground = color;
            }
            ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(200L);
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$1$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BotWebViewMenuContainer.C41311.this.lambda$onWebAppSetActionBarColor$0(i2, color, valueAnimator);
                }
            });
            duration.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onWebAppSetActionBarColor$0(int i, int i2, ValueAnimator valueAnimator) {
            if (i != 0) {
                BotWebViewMenuContainer.this.overrideActionBarBackground = ColorUtils.blendARGB(i, i2, ((Float) valueAnimator.getAnimatedValue()).floatValue());
            } else {
                BotWebViewMenuContainer.this.overrideActionBarBackgroundProgress = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            }
            BotWebViewMenuContainer.this.actionBarPaint.setColor(BotWebViewMenuContainer.this.overrideActionBarBackground);
            BotWebViewMenuContainer.this.invalidateActionBar();
        }

        @Override // org.telegram.p044ui.Components.BotWebViewContainer.Delegate
        public void onWebAppSetBackgroundColor(final int i) {
            BotWebViewMenuContainer.this.overrideBackgroundColor = true;
            final int color = BotWebViewMenuContainer.this.backgroundPaint.getColor();
            ValueAnimator duration = ValueAnimator.ofFloat(BitmapDescriptorFactory.HUE_RED, 1.0f).setDuration(200L);
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$1$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BotWebViewMenuContainer.C41311.this.lambda$onWebAppSetBackgroundColor$1(color, i, valueAnimator);
                }
            });
            duration.start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onWebAppSetBackgroundColor$1(int i, int i2, ValueAnimator valueAnimator) {
            BotWebViewMenuContainer.this.backgroundPaint.setColor(ColorUtils.blendARGB(i, i2, ((Float) valueAnimator.getAnimatedValue()).floatValue()));
            BotWebViewMenuContainer.this.invalidate();
        }

        @Override // org.telegram.p044ui.Components.BotWebViewContainer.Delegate
        public void onWebAppExpand() {
            if (BotWebViewMenuContainer.this.swipeContainer.isSwipeInProgress()) {
                return;
            }
            BotWebViewMenuContainer.this.swipeContainer.stickTo((-BotWebViewMenuContainer.this.swipeContainer.getOffsetY()) + BotWebViewMenuContainer.this.swipeContainer.getTopActionBarOffsetY());
        }

        @Override // org.telegram.p044ui.Components.BotWebViewContainer.Delegate
        public void onWebAppSwitchInlineQuery(final TLRPC$User tLRPC$User, final String str, List<String> list) {
            if (list.isEmpty()) {
                ChatActivityEnterView chatActivityEnterView = this.val$parentEnterView;
                chatActivityEnterView.setFieldText("@" + UserObject.getPublicUsername(tLRPC$User) + " " + str);
                BotWebViewMenuContainer.this.dismiss();
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putInt("dialogsType", 14);
            bundle.putBoolean("onlySelect", true);
            bundle.putBoolean("allowGroups", list.contains("groups"));
            bundle.putBoolean("allowUsers", list.contains("users"));
            bundle.putBoolean("allowChannels", list.contains("channels"));
            bundle.putBoolean("allowBots", list.contains("bots"));
            DialogsActivity dialogsActivity = new DialogsActivity(bundle);
            dialogsActivity.setDelegate(new DialogsActivity.DialogsActivityDelegate() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$1$$ExternalSyntheticLambda3
                @Override // org.telegram.p044ui.DialogsActivity.DialogsActivityDelegate
                public final boolean didSelectDialogs(DialogsActivity dialogsActivity2, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
                    boolean lambda$onWebAppSwitchInlineQuery$2;
                    lambda$onWebAppSwitchInlineQuery$2 = BotWebViewMenuContainer.C41311.this.lambda$onWebAppSwitchInlineQuery$2(tLRPC$User, str, dialogsActivity2, arrayList, charSequence, z, topicsFragment, callbacks$Callback1);
                    return lambda$onWebAppSwitchInlineQuery$2;
                }
            });
            this.val$parentEnterView.getParentFragment().presentFragment(dialogsActivity);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ boolean lambda$onWebAppSwitchInlineQuery$2(TLRPC$User tLRPC$User, String str, DialogsActivity dialogsActivity, ArrayList arrayList, CharSequence charSequence, boolean z, TopicsFragment topicsFragment, Callbacks$Callback1 callbacks$Callback1) {
            if (callbacks$Callback1 != null) {
                callbacks$Callback1.invoke(null);
                return true;
            }
            long j = ((MessagesStorage.TopicKey) arrayList.get(0)).dialogId;
            Bundle bundle = new Bundle();
            bundle.putBoolean("scrollToTopOnResume", true);
            if (DialogObject.isEncryptedDialog(j)) {
                bundle.putInt("enc_id", DialogObject.getEncryptedChatId(j));
            } else if (DialogObject.isUserDialog(j)) {
                bundle.putLong("user_id", j);
            } else {
                bundle.putLong("chat_id", -j);
            }
            bundle.putString("inline_query_input", "@" + UserObject.getPublicUsername(tLRPC$User) + " " + str);
            if (MessagesController.getInstance(BotWebViewMenuContainer.this.currentAccount).checkCanOpenChat(bundle, dialogsActivity)) {
                dialogsActivity.presentFragment(new INavigationLayout.NavigationParams(new ChatActivity(bundle)).setRemoveLast(true));
            }
            return true;
        }

        @Override // org.telegram.p044ui.Components.BotWebViewContainer.Delegate
        public void onWebAppOpenInvoice(final String str, TLObject tLObject) {
            PaymentFormActivity paymentFormActivity;
            ChatActivity parentFragment = this.val$parentEnterView.getParentFragment();
            if (tLObject instanceof TLRPC$TL_payments_paymentForm) {
                TLRPC$TL_payments_paymentForm tLRPC$TL_payments_paymentForm = (TLRPC$TL_payments_paymentForm) tLObject;
                MessagesController.getInstance(BotWebViewMenuContainer.this.currentAccount).putUsers(tLRPC$TL_payments_paymentForm.users, false);
                paymentFormActivity = new PaymentFormActivity(tLRPC$TL_payments_paymentForm, str, parentFragment);
            } else {
                paymentFormActivity = tLObject instanceof TLRPC$TL_payments_paymentReceipt ? new PaymentFormActivity((TLRPC$TL_payments_paymentReceipt) tLObject) : null;
            }
            if (paymentFormActivity != null) {
                paymentFormActivity.setPaymentFormCallback(new PaymentFormActivity.PaymentFormCallback() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$1$$ExternalSyntheticLambda4
                    @Override // org.telegram.p044ui.PaymentFormActivity.PaymentFormCallback
                    public final void onInvoiceStatusChanged(PaymentFormActivity.InvoiceStatus invoiceStatus) {
                        BotWebViewMenuContainer.C41311.this.lambda$onWebAppOpenInvoice$3(str, invoiceStatus);
                    }
                });
                parentFragment.presentFragment(paymentFormActivity);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onWebAppOpenInvoice$3(String str, PaymentFormActivity.InvoiceStatus invoiceStatus) {
            BotWebViewMenuContainer.this.webViewContainer.onInvoiceStatusUpdate(str, invoiceStatus.name().toLowerCase(Locale.ROOT));
        }

        @Override // org.telegram.p044ui.Components.BotWebViewContainer.Delegate
        public void onSetupMainButton(boolean z, boolean z2, String str, int i, int i2, boolean z3) {
            ChatActivityBotWebViewButton botWebViewButton = this.val$parentEnterView.getBotWebViewButton();
            botWebViewButton.setupButtonParams(z2, str, i, i2, z3);
            botWebViewButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$1$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    BotWebViewMenuContainer.C41311.this.lambda$onSetupMainButton$4(view);
                }
            });
            if (z != BotWebViewMenuContainer.this.botWebViewButtonWasVisible) {
                BotWebViewMenuContainer.this.animateBotButton(z);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onSetupMainButton$4(View view) {
            BotWebViewMenuContainer.this.webViewContainer.onMainButtonPressed();
        }

        @Override // org.telegram.p044ui.Components.BotWebViewContainer.Delegate
        public void onSetBackButtonVisible(boolean z) {
            if (BotWebViewMenuContainer.this.actionBarTransitionProgress == 1.0f) {
                if (z) {
                    AndroidUtilities.updateImageViewImageAnimated(this.val$actionBar.getBackButton(), this.val$actionBar.getBackButtonDrawable());
                } else {
                    AndroidUtilities.updateImageViewImageAnimated(this.val$actionBar.getBackButton(), C3290R.C3292drawable.ic_close_white);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5(C3356ActionBar c3356ActionBar) {
        float swipeOffsetY = this.swipeContainer.getSwipeOffsetY();
        float f = BitmapDescriptorFactory.HUE_RED;
        if (swipeOffsetY > BitmapDescriptorFactory.HUE_RED) {
            this.dimPaint.setAlpha((int) ((1.0f - (Math.min(this.swipeContainer.getSwipeOffsetY(), this.swipeContainer.getHeight()) / this.swipeContainer.getHeight())) * 64.0f));
        } else {
            this.dimPaint.setAlpha(64);
        }
        invalidate();
        this.webViewContainer.invalidateViewPortHeight();
        if (this.springAnimation != null) {
            float min = 1.0f - (Math.min(this.swipeContainer.getTopActionBarOffsetY(), this.swipeContainer.getTranslationY() - this.swipeContainer.getTopActionBarOffsetY()) / this.swipeContainer.getTopActionBarOffsetY());
            if (getVisibility() == 0) {
                f = min;
            }
            float f2 = (f > 0.5f ? 1 : 0) * 100.0f;
            if (this.springAnimation.getSpring().getFinalPosition() != f2) {
                this.springAnimation.getSpring().setFinalPosition(f2);
                this.springAnimation.start();
                if (!this.webViewContainer.isBackButtonVisible()) {
                    if (f2 == 100.0f) {
                        AndroidUtilities.updateImageViewImageAnimated(c3356ActionBar.getBackButton(), C3290R.C3292drawable.ic_close_white);
                    } else {
                        AndroidUtilities.updateImageViewImageAnimated(c3356ActionBar.getBackButton(), c3356ActionBar.getBackButtonDrawable());
                    }
                }
            }
        }
        System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$6() {
        this.webViewContainer.invalidateViewPortHeight(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$7() {
        if (onCheckDismissByUser()) {
            return;
        }
        this.swipeContainer.stickTo(BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Boolean lambda$new$8(ChatActivityEnterView chatActivityEnterView, Void r1) {
        return Boolean.valueOf(chatActivityEnterView.getSizeNotifierLayout().getKeyboardHeight() >= AndroidUtilities.m54dp(20));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$10(Float f) {
        this.progressView.setLoadProgressAnimated(f.floatValue());
        if (f.floatValue() == 1.0f) {
            ValueAnimator duration = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED).setDuration(200L);
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda2
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BotWebViewMenuContainer.this.lambda$new$9(valueAnimator);
                }
            });
            duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer.3
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BotWebViewMenuContainer.this.progressView.setVisibility(8);
                }
            });
            duration.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$9(ValueAnimator valueAnimator) {
        this.progressView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void invalidateActionBar() {
        ChatActivity parentFragment = this.parentEnterView.getParentFragment();
        if (parentFragment == null || getVisibility() != 0) {
            return;
        }
        ChatAvatarContainer avatarContainer = parentFragment.getAvatarContainer();
        int blendARGB = ColorUtils.blendARGB(getColor(avatarContainer.getLastSubtitleColorKey() < 0 ? Theme.key_actionBarDefaultSubtitle : avatarContainer.getLastSubtitleColorKey()), getColor(Theme.key_windowBackgroundWhiteGrayText), this.actionBarTransitionProgress);
        C3356ActionBar actionBar = parentFragment.getActionBar();
        actionBar.setBackgroundColor(ColorUtils.blendARGB(getColor(Theme.key_actionBarDefault), getColor(Theme.key_windowBackgroundWhite), this.actionBarTransitionProgress));
        int color = getColor(Theme.key_actionBarDefaultIcon);
        int i = Theme.key_windowBackgroundWhiteBlackText;
        actionBar.setItemsColor(ColorUtils.blendARGB(color, getColor(i), this.actionBarTransitionProgress), false);
        actionBar.setItemsBackgroundColor(ColorUtils.blendARGB(getColor(Theme.key_actionBarDefaultSelector), getColor(Theme.key_actionBarWhiteSelector), this.actionBarTransitionProgress), false);
        actionBar.setSubtitleColor(blendARGB);
        ChatAvatarContainer avatarContainer2 = parentFragment.getAvatarContainer();
        avatarContainer2.getTitleTextView().setTextColor(ColorUtils.blendARGB(getColor(Theme.key_actionBarDefaultTitle), getColor(i), this.actionBarTransitionProgress));
        avatarContainer2.getSubtitleTextView().setTextColor(blendARGB);
        avatarContainer2.setOverrideSubtitleColor(this.actionBarTransitionProgress == BitmapDescriptorFactory.HUE_RED ? null : Integer.valueOf(blendARGB));
        updateLightStatusBar();
    }

    public boolean onBackPressed() {
        if (this.webViewContainer.onBackPressed()) {
            return true;
        }
        if (getVisibility() == 0) {
            onCheckDismissByUser();
            return true;
        }
        return false;
    }

    public boolean onCheckDismissByUser() {
        if (this.needCloseConfirmation) {
            TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.botId));
            AlertDialog create = new AlertDialog.Builder(getContext()).setTitle(user != null ? ContactsController.formatName(user.first_name, user.last_name) : null).setMessage(LocaleController.getString(C3290R.string.BotWebViewChangesMayNotBeSaved)).setPositiveButton(LocaleController.getString(C3290R.string.BotWebViewCloseAnyway), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda3
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    BotWebViewMenuContainer.this.lambda$onCheckDismissByUser$11(dialogInterface, i);
                }
            }).setNegativeButton(LocaleController.getString(C3290R.string.Cancel), null).create();
            create.show();
            ((TextView) create.getButton(-1)).setTextColor(getColor(Theme.key_text_RedBold));
            return false;
        }
        dismiss();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onCheckDismissByUser$11(DialogInterface dialogInterface, int i) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void animateBotButton(final boolean z) {
        final ChatActivityBotWebViewButton botWebViewButton = this.parentEnterView.getBotWebViewButton();
        SpringAnimation springAnimation = this.botWebViewButtonAnimator;
        if (springAnimation != null) {
            springAnimation.cancel();
            this.botWebViewButtonAnimator = null;
        }
        float f = BitmapDescriptorFactory.HUE_RED;
        botWebViewButton.setProgress(z ? 0.0f : 1.0f);
        if (z) {
            botWebViewButton.setVisibility(0);
        }
        SimpleFloatPropertyCompat<ChatActivityBotWebViewButton> simpleFloatPropertyCompat = ChatActivityBotWebViewButton.PROGRESS_PROPERTY;
        SpringAnimation springAnimation2 = new SpringAnimation(botWebViewButton, simpleFloatPropertyCompat);
        if (z) {
            f = 1.0f;
        }
        SpringAnimation addEndListener = springAnimation2.setSpring(new SpringForce(f * simpleFloatPropertyCompat.getMultiplier()).setStiffness(z ? 600.0f : 750.0f).setDampingRatio(1.0f)).addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda8
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f2, float f3) {
                BotWebViewMenuContainer.this.lambda$animateBotButton$12(dynamicAnimation, f2, f3);
            }
        }).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda7
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z2, float f2, float f3) {
                BotWebViewMenuContainer.this.lambda$animateBotButton$13(z, botWebViewButton, dynamicAnimation, z2, f2, f3);
            }
        });
        this.botWebViewButtonAnimator = addEndListener;
        addEndListener.start();
        this.botWebViewButtonWasVisible = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateBotButton$12(DynamicAnimation dynamicAnimation, float f, float f2) {
        float multiplier = f / ChatActivityBotWebViewButton.PROGRESS_PROPERTY.getMultiplier();
        this.parentEnterView.setBotWebViewButtonOffsetX(AndroidUtilities.m54dp(64) * multiplier);
        this.parentEnterView.setComposeShadowAlpha(1.0f - multiplier);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$animateBotButton$13(boolean z, ChatActivityBotWebViewButton chatActivityBotWebViewButton, DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
        if (!z) {
            chatActivityBotWebViewButton.setVisibility(8);
        }
        if (this.botWebViewButtonAnimator == dynamicAnimation) {
            this.botWebViewButtonAnimator = null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.springAnimation == null) {
            this.springAnimation = new SpringAnimation(this, ACTION_BAR_TRANSITION_PROGRESS_VALUE).setSpring(new SpringForce().setStiffness(1200.0f).setDampingRatio(1.0f)).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda6
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                    BotWebViewMenuContainer.this.lambda$onAttachedToWindow$14(dynamicAnimation, z, f, f2);
                }
            });
        }
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.webViewResultSent);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didSetNewTheme);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onAttachedToWindow$14(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        ChatActivity parentFragment = this.parentEnterView.getParentFragment();
        ChatAvatarContainer avatarContainer = parentFragment.getAvatarContainer();
        int i = (f > BitmapDescriptorFactory.HUE_RED ? 1 : (f == BitmapDescriptorFactory.HUE_RED ? 0 : -1));
        avatarContainer.setClickable(i == 0);
        avatarContainer.getAvatarImageView().setClickable(i == 0);
        C3356ActionBar actionBar = parentFragment.getActionBar();
        if (f == 100.0f && this.parentEnterView.hasBotWebView()) {
            parentFragment.showHeaderItem(false);
            checkBotMenuItem();
            this.botMenuItem.setVisibility(0);
            actionBar.setActionBarMenuOnItemClick(new C3356ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer.4
                @Override // org.telegram.p044ui.ActionBar.C3356ActionBar.ActionBarMenuOnItemClick
                public void onItemClick(int i2) {
                    if (i2 == -1) {
                        if (BotWebViewMenuContainer.this.webViewContainer.onBackPressed()) {
                            return;
                        }
                        BotWebViewMenuContainer.this.onCheckDismissByUser();
                    } else if (i2 == C3290R.C3293id.menu_reload_page) {
                        if (BotWebViewMenuContainer.this.webViewContainer.getWebView() != null) {
                            BotWebViewMenuContainer.this.webViewContainer.getWebView().animate().cancel();
                            BotWebViewMenuContainer.this.webViewContainer.getWebView().animate().alpha(BitmapDescriptorFactory.HUE_RED).start();
                        }
                        BotWebViewMenuContainer.this.isLoaded = false;
                        BotWebViewMenuContainer.this.progressView.setLoadProgress(BitmapDescriptorFactory.HUE_RED);
                        BotWebViewMenuContainer.this.progressView.setAlpha(1.0f);
                        BotWebViewMenuContainer.this.progressView.setVisibility(0);
                        BotWebViewMenuContainer.this.webViewContainer.setBotUser(MessagesController.getInstance(BotWebViewMenuContainer.this.currentAccount).getUser(Long.valueOf(BotWebViewMenuContainer.this.botId)));
                        BotWebViewMenuContainer.this.webViewContainer.loadFlickerAndSettingsItem(BotWebViewMenuContainer.this.currentAccount, BotWebViewMenuContainer.this.botId, BotWebViewMenuContainer.this.settingsItem);
                        BotWebViewMenuContainer.this.webViewContainer.reload();
                    } else if (i2 == C3290R.C3293id.menu_settings) {
                        BotWebViewMenuContainer.this.webViewContainer.onSettingsButtonPressed();
                    }
                }
            });
            return;
        }
        parentFragment.showHeaderItem(true);
        ActionBarMenuItem actionBarMenuItem = this.botMenuItem;
        if (actionBarMenuItem != null) {
            actionBarMenuItem.setVisibility(8);
        }
        actionBar.setActionBarMenuOnItemClick(this.actionBarOnItemClick);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        SpringAnimation springAnimation = this.springAnimation;
        if (springAnimation != null) {
            springAnimation.cancel();
            this.springAnimation = null;
        }
        this.actionBarTransitionProgress = BitmapDescriptorFactory.HUE_RED;
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.webViewResultSent);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didSetNewTheme);
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.ignoreMeasure) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
        } else {
            super.onMeasure(i, i2);
        }
    }

    public void onPanTransitionStart(boolean z, int i) {
        boolean z2;
        if (z) {
            float topActionBarOffsetY = (-this.swipeContainer.getOffsetY()) + this.swipeContainer.getTopActionBarOffsetY();
            if (this.swipeContainer.getSwipeOffsetY() != topActionBarOffsetY) {
                this.swipeContainer.stickTo(topActionBarOffsetY);
                z2 = true;
            } else {
                z2 = false;
            }
            int measureKeyboardHeight = this.parentEnterView.getSizeNotifierLayout().measureKeyboardHeight() + i;
            setMeasuredDimension(getMeasuredWidth(), i);
            this.ignoreMeasure = true;
            if (z2) {
                return;
            }
            ValueAnimator valueAnimator = this.webViewScrollAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
                this.webViewScrollAnimator = null;
            }
            if (this.webViewContainer.getWebView() != null) {
                int scrollY = this.webViewContainer.getWebView().getScrollY();
                final int i2 = (measureKeyboardHeight - i) + scrollY;
                ValueAnimator duration = ValueAnimator.ofInt(scrollY, i2).setDuration(250L);
                this.webViewScrollAnimator = duration;
                duration.setInterpolator(ChatListItemAnimator.DEFAULT_INTERPOLATOR);
                this.webViewScrollAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                        BotWebViewMenuContainer.this.lambda$onPanTransitionStart$15(valueAnimator2);
                    }
                });
                this.webViewScrollAnimator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer.5
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        if (BotWebViewMenuContainer.this.webViewContainer.getWebView() != null) {
                            BotWebViewMenuContainer.this.webViewContainer.getWebView().setScrollY(i2);
                        }
                        if (animator == BotWebViewMenuContainer.this.webViewScrollAnimator) {
                            BotWebViewMenuContainer.this.webViewScrollAnimator = null;
                        }
                    }
                });
                this.webViewScrollAnimator.start();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onPanTransitionStart$15(ValueAnimator valueAnimator) {
        int intValue = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        if (this.webViewContainer.getWebView() != null) {
            this.webViewContainer.getWebView().setScrollY(intValue);
        }
    }

    public void onPanTransitionEnd() {
        this.ignoreMeasure = false;
        requestLayout();
    }

    private void updateLightStatusBar() {
        boolean z = true;
        z = (ColorUtils.calculateLuminance(Theme.getColor(Theme.key_windowBackgroundWhite, null, true)) < 0.9d || this.actionBarTransitionProgress < 0.85f) ? false : false;
        Boolean bool = this.wasLightStatusBar;
        if (bool == null || bool.booleanValue() != z) {
            this.wasLightStatusBar = Boolean.valueOf(z);
            if (Build.VERSION.SDK_INT >= 23) {
                int systemUiVisibility = getSystemUiVisibility();
                setSystemUiVisibility(z ? systemUiVisibility | 8192 : systemUiVisibility & (-8193));
            }
        }
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!this.overrideBackgroundColor) {
            this.backgroundPaint.setColor(getColor(Theme.key_windowBackgroundWhite));
        }
        if (this.overrideActionBarBackgroundProgress == BitmapDescriptorFactory.HUE_RED) {
            this.actionBarPaint.setColor(getColor(Theme.key_windowBackgroundWhite));
        }
        RectF rectF = AndroidUtilities.rectTmp;
        rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getWidth(), getHeight());
        canvas.drawRect(rectF, this.dimPaint);
        float m54dp = AndroidUtilities.m54dp(16) * (1.0f - this.actionBarTransitionProgress);
        rectF.set(BitmapDescriptorFactory.HUE_RED, AndroidUtilities.lerp(this.swipeContainer.getTranslationY(), (float) BitmapDescriptorFactory.HUE_RED, this.actionBarTransitionProgress), getWidth(), this.swipeContainer.getTranslationY() + AndroidUtilities.m54dp(24) + m54dp);
        canvas.drawRoundRect(rectF, m54dp, m54dp, this.actionBarPaint);
        rectF.set(BitmapDescriptorFactory.HUE_RED, this.swipeContainer.getTranslationY() + AndroidUtilities.m54dp(24), getWidth(), getHeight() + m54dp);
        canvas.drawRect(rectF, this.backgroundPaint);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0 && motionEvent.getY() <= AndroidUtilities.lerp(this.swipeContainer.getTranslationY() + AndroidUtilities.m54dp(24), (float) BitmapDescriptorFactory.HUE_RED, this.actionBarTransitionProgress)) {
            onCheckDismissByUser();
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        this.linePaint.setColor(getColor(Theme.key_sheet_scrollUp));
        Paint paint = this.linePaint;
        paint.setAlpha((int) (paint.getAlpha() * (1.0f - (Math.min(0.5f, this.actionBarTransitionProgress) / 0.5f))));
        canvas.save();
        float f = 1.0f - this.actionBarTransitionProgress;
        float lerp = AndroidUtilities.lerp(this.swipeContainer.getTranslationY(), AndroidUtilities.statusBarHeight + (C3356ActionBar.getCurrentActionBarHeight() / 2.0f), this.actionBarTransitionProgress) + AndroidUtilities.m54dp(12);
        canvas.scale(f, f, getWidth() / 2.0f, lerp);
        canvas.drawLine((getWidth() / 2.0f) - AndroidUtilities.m54dp(16), lerp, (getWidth() / 2.0f) + AndroidUtilities.m54dp(16), lerp, this.linePaint);
        canvas.restore();
    }

    public void show(int i, long j, String str) {
        this.dismissed = false;
        if (this.currentAccount != i || this.botId != j || !Objects.equals(this.botUrl, str)) {
            this.isLoaded = false;
        }
        this.currentAccount = i;
        this.botId = j;
        this.botUrl = str;
        this.savedEditText = this.parentEnterView.getEditText();
        this.parentEnterView.getEditField().setText((CharSequence) null);
        this.savedReplyMessageObject = this.parentEnterView.getReplyingMessageObject();
        this.savedEditMessageObject = this.parentEnterView.getEditingMessageObject();
        ChatActivity parentFragment = this.parentEnterView.getParentFragment();
        if (parentFragment != null) {
            parentFragment.hideFieldPanel(true);
        }
        if (!this.isLoaded) {
            loadWebView();
        }
        setVisibility(0);
        setAlpha(BitmapDescriptorFactory.HUE_RED);
        addOnLayoutChangeListener(new View$OnLayoutChangeListenerC41366());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.BotWebViewMenuContainer$6 */
    /* loaded from: classes6.dex */
    public class View$OnLayoutChangeListenerC41366 implements View.OnLayoutChangeListener {
        View$OnLayoutChangeListenerC41366() {
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
            view.removeOnLayoutChangeListener(this);
            BotWebViewMenuContainer.this.swipeContainer.setSwipeOffsetY(BotWebViewMenuContainer.this.swipeContainer.getHeight());
            BotWebViewMenuContainer.this.setAlpha(1.0f);
            new SpringAnimation(BotWebViewMenuContainer.this.swipeContainer, ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer.SWIPE_OFFSET_Y, BitmapDescriptorFactory.HUE_RED).setSpring(new SpringForce(BitmapDescriptorFactory.HUE_RED).setDampingRatio(0.75f).setStiffness(500.0f)).addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$6$$ExternalSyntheticLambda0
                @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                    BotWebViewMenuContainer.View$OnLayoutChangeListenerC41366.this.lambda$onLayoutChange$0(dynamicAnimation, z, f, f2);
                }
            }).start();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onLayoutChange$0(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
            BotWebViewMenuContainer.this.webViewContainer.restoreButtonData();
            BotWebViewMenuContainer.this.webViewContainer.invalidateViewPortHeight(true);
        }
    }

    private void loadWebView() {
        this.progressView.setLoadProgress(BitmapDescriptorFactory.HUE_RED);
        this.progressView.setAlpha(1.0f);
        this.progressView.setVisibility(0);
        this.webViewContainer.setBotUser(MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(this.botId)));
        this.webViewContainer.loadFlickerAndSettingsItem(this.currentAccount, this.botId, this.settingsItem);
        TLRPC$TL_messages_requestWebView tLRPC$TL_messages_requestWebView = new TLRPC$TL_messages_requestWebView();
        tLRPC$TL_messages_requestWebView.bot = MessagesController.getInstance(this.currentAccount).getInputUser(this.botId);
        tLRPC$TL_messages_requestWebView.peer = MessagesController.getInstance(this.currentAccount).getInputPeer(this.botId);
        tLRPC$TL_messages_requestWebView.platform = "android";
        tLRPC$TL_messages_requestWebView.url = this.botUrl;
        tLRPC$TL_messages_requestWebView.flags |= 2;
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("bg_color", getColor(Theme.key_windowBackgroundWhite));
            jSONObject.put("secondary_bg_color", getColor(Theme.key_windowBackgroundGray));
            jSONObject.put("text_color", getColor(Theme.key_windowBackgroundWhiteBlackText));
            jSONObject.put("hint_color", getColor(Theme.key_windowBackgroundWhiteHintText));
            jSONObject.put("link_color", getColor(Theme.key_windowBackgroundWhiteLinkText));
            jSONObject.put("button_color", getColor(Theme.key_featuredStickers_addButton));
            jSONObject.put("button_text_color", getColor(Theme.key_featuredStickers_buttonText));
            TLRPC$TL_dataJSON tLRPC$TL_dataJSON = new TLRPC$TL_dataJSON();
            tLRPC$TL_messages_requestWebView.theme_params = tLRPC$TL_dataJSON;
            tLRPC$TL_dataJSON.data = jSONObject.toString();
            tLRPC$TL_messages_requestWebView.flags |= 4;
        } catch (Exception e) {
            FileLog.m49e(e);
        }
        tLRPC$TL_messages_requestWebView.from_bot_menu = true;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_requestWebView, new RequestDelegate() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda18
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                BotWebViewMenuContainer.this.lambda$loadWebView$17(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadWebView$17(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                BotWebViewMenuContainer.this.lambda$loadWebView$16(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadWebView$16(TLObject tLObject) {
        if (tLObject instanceof TLRPC$TL_webViewResultUrl) {
            this.isLoaded = true;
            TLRPC$TL_webViewResultUrl tLRPC$TL_webViewResultUrl = (TLRPC$TL_webViewResultUrl) tLObject;
            this.queryId = tLRPC$TL_webViewResultUrl.query_id;
            this.webViewContainer.loadUrl(this.currentAccount, tLRPC$TL_webViewResultUrl.url);
            this.swipeContainer.setWebView(this.webViewContainer.getWebView());
            AndroidUtilities.runOnUIThread(this.pollRunnable, 60000L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getColor(int i) {
        Theme.ResourcesProvider resourceProvider = this.parentEnterView.getParentFragment().getResourceProvider();
        if (resourceProvider != null && resourceProvider.contains(i)) {
            return resourceProvider.getColor(i);
        }
        return Theme.getColor(i);
    }

    public void setOnDismissGlobalListener(Runnable runnable) {
        this.globalOnDismissListener = runnable;
    }

    public void dismiss() {
        dismiss(null);
    }

    public void dismiss(final Runnable runnable) {
        if (this.dismissed) {
            return;
        }
        this.dismissed = true;
        ChatAttachAlertBotWebViewLayout.WebViewSwipeContainer webViewSwipeContainer = this.swipeContainer;
        webViewSwipeContainer.stickTo(webViewSwipeContainer.getHeight() + this.parentEnterView.getSizeNotifierLayout().measureKeyboardHeight(), new Runnable() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                BotWebViewMenuContainer.this.lambda$dismiss$18(runnable);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$dismiss$18(Runnable runnable) {
        onDismiss();
        if (runnable != null) {
            runnable.run();
        }
        Runnable runnable2 = this.globalOnDismissListener;
        if (runnable2 != null) {
            runnable2.run();
        }
    }

    public void onDismiss() {
        setVisibility(8);
        this.needCloseConfirmation = false;
        this.overrideActionBarBackground = 0;
        this.overrideActionBarBackgroundProgress = BitmapDescriptorFactory.HUE_RED;
        Paint paint = this.actionBarPaint;
        int i = Theme.key_windowBackgroundWhite;
        paint.setColor(getColor(i));
        this.webViewContainer.destroyWebView();
        this.swipeContainer.removeView(this.webViewContainer);
        BotWebViewContainer botWebViewContainer = new BotWebViewContainer(getContext(), this.parentEnterView.getParentFragment().getResourceProvider(), getColor(i));
        this.webViewContainer = botWebViewContainer;
        botWebViewContainer.setDelegate(this.webViewDelegate);
        this.webViewContainer.setWebViewProgressListener(new Consumer() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda5
            @Override // androidx.core.util.Consumer
            public final void accept(Object obj) {
                BotWebViewMenuContainer.this.lambda$onDismiss$20((Float) obj);
            }
        });
        this.swipeContainer.addView(this.webViewContainer);
        this.isLoaded = false;
        AndroidUtilities.cancelRunOnUIThread(this.pollRunnable);
        boolean z = this.botWebViewButtonWasVisible;
        if (z) {
            this.botWebViewButtonWasVisible = false;
            animateBotButton(false);
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda9
            @Override // java.lang.Runnable
            public final void run() {
                BotWebViewMenuContainer.this.lambda$onDismiss$21();
            }
        }, z ? 200L : 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDismiss$20(Float f) {
        this.progressView.setLoadProgressAnimated(f.floatValue());
        if (f.floatValue() == 1.0f) {
            ValueAnimator duration = ValueAnimator.ofFloat(1.0f, BitmapDescriptorFactory.HUE_RED).setDuration(200L);
            duration.setInterpolator(CubicBezierInterpolator.DEFAULT);
            duration.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda1
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                    BotWebViewMenuContainer.this.lambda$onDismiss$19(valueAnimator);
                }
            });
            duration.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer.7
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    BotWebViewMenuContainer.this.progressView.setVisibility(8);
                }
            });
            duration.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDismiss$19(ValueAnimator valueAnimator) {
        this.progressView.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onDismiss$21() {
        if (this.savedEditText != null && this.parentEnterView.getEditField() != null) {
            this.parentEnterView.getEditField().setText(this.savedEditText);
            this.savedEditText = null;
        }
        if (this.savedReplyMessageObject != null) {
            ChatActivity parentFragment = this.parentEnterView.getParentFragment();
            if (parentFragment != null) {
                parentFragment.showFieldPanelForReply(this.savedReplyMessageObject);
            }
            this.savedReplyMessageObject = null;
        }
        if (this.savedEditMessageObject != null) {
            ChatActivity parentFragment2 = this.parentEnterView.getParentFragment();
            if (parentFragment2 != null) {
                parentFragment2.showFieldPanelForEdit(true, this.savedEditMessageObject);
            }
            this.savedEditMessageObject = null;
        }
    }

    public boolean hasSavedText() {
        return (this.savedEditText == null && this.savedReplyMessageObject == null && this.savedEditMessageObject == null) ? false : true;
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        if (i == NotificationCenter.webViewResultSent) {
            if (this.queryId == ((Long) objArr[0]).longValue()) {
                dismiss();
            }
        } else if (i == NotificationCenter.didSetNewTheme) {
            this.webViewContainer.updateFlickerBackgroundColor(getColor(Theme.key_windowBackgroundWhite));
            invalidate();
            invalidateActionBar();
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.BotWebViewMenuContainer$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    BotWebViewMenuContainer.this.invalidateActionBar();
                }
            }, 300L);
        }
    }
}
