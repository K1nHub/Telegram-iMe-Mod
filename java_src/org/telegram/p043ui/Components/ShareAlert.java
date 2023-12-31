package org.telegram.p043ui.Components;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Activity;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Outline;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Property;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.view.ViewParent;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import androidx.arch.core.util.Function;
import androidx.collection.LongSparseArray;
import androidx.core.view.ViewCompat;
import androidx.dynamicanimation.animation.DynamicAnimation;
import androidx.dynamicanimation.animation.FloatValueHolder;
import androidx.dynamicanimation.animation.SpringAnimation;
import androidx.dynamicanimation.animation.SpringForce;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.AlbumsController;
import com.iMe.fork.controller.ToolsController;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import org.telegram.messenger.AccountInstance;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.DispatchQueue;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.GenericProvider;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaDataController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagePreviewParams;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.SharedConfig;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.ActionBarMenuSubItem;
import org.telegram.p043ui.ActionBar.ActionBarPopupWindow;
import org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.C3704ActionBar;
import org.telegram.p043ui.ActionBar.INavigationLayout;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Adapters.DialogsSearchAdapter;
import org.telegram.p043ui.Adapters.SearchAdapterHelper;
import org.telegram.p043ui.Cells.GraySectionCell;
import org.telegram.p043ui.Cells.HintDialogCell;
import org.telegram.p043ui.Cells.ShareDialogCell;
import org.telegram.p043ui.Cells.ShareTopicCell;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.Components.MessagePreviewView;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.ShareAlert;
import org.telegram.p043ui.DialogsActivity;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.MessageStatisticActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$Dialog;
import org.telegram.tgnet.TLRPC$EncryptedChat;
import org.telegram.tgnet.TLRPC$MessageEntity;
import org.telegram.tgnet.TLRPC$Peer;
import org.telegram.tgnet.TLRPC$TL_channels_exportMessageLink;
import org.telegram.tgnet.TLRPC$TL_chatAdminRights;
import org.telegram.tgnet.TLRPC$TL_dialog;
import org.telegram.tgnet.TLRPC$TL_encryptedChat;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_exportedMessageLink;
import org.telegram.tgnet.TLRPC$TL_forumTopic;
import org.telegram.tgnet.TLRPC$TL_topPeer;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.p042tl.TL_stories$StoryItem;
/* renamed from: org.telegram.ui.Components.ShareAlert */
/* loaded from: classes6.dex */
public class ShareAlert extends BottomSheet implements NotificationCenter.NotificationCenterDelegate {
    private AnimatorSet animatorSet;
    private final FrameLayout blurredView;
    private float captionEditTextTopOffset;
    private float chatActivityEnterViewAnimateFromTop;
    private EditTextEmoji commentTextView;
    private int containerViewTop;
    private boolean copyLinkOnEnd;
    private float currentPanTranslationY;
    private boolean darkTheme;
    private ShareAlertDelegate delegate;
    private TLRPC$TL_exportedMessageLink exportedMessageLink;
    private ImageView forwardingOptionsButton;
    private MessagePreviewParams forwardingParams;
    private MessagePreviewView forwardingPreviewView;
    private FrameLayout frameLayout;
    private FrameLayout frameLayout2;
    private boolean fullyShown;
    private RecyclerListView gridView;
    private int hasPoll;
    private boolean isChannel;
    int lastOffset;
    private GridLayoutManager layoutManager;
    private String[] linkToCopy;
    private ShareDialogsAdapter listAdapter;
    private boolean loadingLink;
    private Paint paint;
    private boolean panTranslationMoveLayout;
    private Activity parentActivity;
    private ChatActivity parentFragment;
    private TextView pickerBottomLayout;
    private int previousScrollOffsetY;
    private ArrayList<DialogsSearchAdapter.RecentSearchObject> recentSearchObjects;
    private LongSparseArray<DialogsSearchAdapter.RecentSearchObject> recentSearchObjectsById;
    private RectF rect;
    RecyclerItemsEnterAnimator recyclerItemsEnterAnimator;
    private final Theme.ResourcesProvider resourcesProvider;
    private int scrollOffsetY;
    private ShareSearchAdapter searchAdapter;
    private StickerEmptyView searchEmptyView;
    private RecyclerListView searchGridView;
    private boolean searchIsVisible;
    private FillLastGridLayoutManager searchLayoutManager;
    SearchField searchView;
    private boolean searchWasVisibleBeforeTopics;
    private View selectedCountView;
    protected Map<TLRPC$Dialog, TLRPC$TL_forumTopic> selectedDialogTopics;
    protected LongSparseArray<TLRPC$Dialog> selectedDialogs;
    private TLRPC$Dialog selectedTopicDialog;
    private ActionBarPopupWindow sendPopupWindow;
    protected ArrayList<MessageObject> sendingMessageObjects;
    private String[] sendingText;
    private View[] shadow;
    private AnimatorSet[] shadowAnimation;
    private Drawable shadowDrawable;
    private ShareTopicsAdapter shareTopicsAdapter;
    private LinearLayout sharesCountLayout;
    private boolean showSendersName;
    private SizeNotifierFrameLayout sizeNotifierFrameLayout;
    TL_stories$StoryItem storyItem;
    private SwitchView switchView;
    private TextPaint textPaint;
    private ValueAnimator topBackgroundAnimator;
    private int topBeforeSwitch;
    private SpringAnimation topicsAnimation;
    C3704ActionBar topicsBackActionBar;
    private RecyclerListView topicsGridView;
    private GridLayoutManager topicsLayoutManager;
    private boolean updateSearchAdapter;
    private FrameLayout writeButtonContainer;

    /* renamed from: org.telegram.ui.Components.ShareAlert$DialogSearchResult */
    /* loaded from: classes6.dex */
    public static class DialogSearchResult {
        public int date;
        public TLRPC$Dialog dialog = new TLRPC$TL_dialog();
        public CharSequence name;
        public TLObject object;
    }

    /* renamed from: org.telegram.ui.Components.ShareAlert$ShareAlertDelegate */
    /* loaded from: classes6.dex */
    public interface ShareAlertDelegate {

        /* renamed from: org.telegram.ui.Components.ShareAlert$ShareAlertDelegate$-CC */
        /* loaded from: classes6.dex */
        public final /* synthetic */ class CC {
            public static void $default$didShare(ShareAlertDelegate shareAlertDelegate) {
            }
        }

        boolean didCopy();

        void didShare();
    }

    public static /* synthetic */ boolean lambda$new$10(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithSwipe() {
        return false;
    }

    public void onSend(LongSparseArray<TLRPC$Dialog> longSparseArray, int i, TLRPC$TL_forumTopic tLRPC$TL_forumTopic) {
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean canDismissWithTouchOutside() {
        MessagePreviewView messagePreviewView = this.forwardingPreviewView;
        return messagePreviewView == null || !messagePreviewView.isShowing();
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public boolean onCustomMeasure(View view, int i, int i2) {
        FrameLayout frameLayout = this.blurredView;
        if (view == frameLayout) {
            frameLayout.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
            return true;
        }
        MessagePreviewView messagePreviewView = this.forwardingPreviewView;
        if (view == messagePreviewView) {
            messagePreviewView.measure(View.MeasureSpec.makeMeasureSpec(i, 1073741824), View.MeasureSpec.makeMeasureSpec(i2 - AndroidUtilities.statusBarHeight, 1073741824));
            return true;
        }
        return false;
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    protected boolean onCustomLayout(View view, int i, int i2, int i3, int i4) {
        int i5 = i3 - i;
        int i6 = i4 - i2;
        FrameLayout frameLayout = this.blurredView;
        if (view == frameLayout) {
            frameLayout.layout(i, 0, i5 + i, i6);
            return true;
        }
        MessagePreviewView messagePreviewView = this.forwardingPreviewView;
        if (view == messagePreviewView) {
            messagePreviewView.layout(i, AndroidUtilities.statusBarHeight, i5 + i, i6);
            return true;
        }
        return false;
    }

    private void openForwardingPreview() {
        INavigationLayout actionBarLayout;
        BaseFragment lastFragment;
        View fragmentView;
        EditText editText;
        Activity activity = this.parentActivity;
        if (!(activity instanceof LaunchActivity) || (actionBarLayout = ((LaunchActivity) activity).getActionBarLayout()) == null || (lastFragment = actionBarLayout.getLastFragment()) == null || (fragmentView = lastFragment.getFragmentView()) == null) {
            return;
        }
        setAllowNestedScroll(false);
        int measuredWidth = (int) (fragmentView.getMeasuredWidth() / 6.0f);
        int measuredHeight = (int) (fragmentView.getMeasuredHeight() / 6.0f);
        Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(createBitmap);
        canvas.scale(0.16666667f, 0.16666667f);
        fragmentView.draw(canvas);
        canvas.translate(this.containerView.getLeft() - getLeftInset(), BitmapDescriptorFactory.HUE_RED);
        this.containerView.draw(canvas);
        Utilities.stackBlurBitmap(createBitmap, Math.max(7, Math.max(measuredWidth, measuredHeight) / 180));
        this.blurredView.setBackground(new BitmapDrawable(createBitmap));
        this.blurredView.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.blurredView.setVisibility(0);
        if (!this.keyboardVisible) {
            editText = null;
        } else if (this.commentTextView.getEditText().isFocused()) {
            editText = this.commentTextView.getEditText();
        } else {
            editText = this.searchView.searchEditText;
        }
        if (this.forwardingParams == null) {
            long keyAt = this.selectedDialogs.keyAt(0);
            MessagePreviewParams messagePreviewParams = new MessagePreviewParams(DialogObject.isEncryptedDialog(keyAt), false);
            this.forwardingParams = messagePreviewParams;
            messagePreviewParams.updateForward(this.sendingMessageObjects, keyAt);
            this.forwardingParams.isFromShareAlert = true;
        }
        this.forwardingPreviewView = new C55701(getContext(), null, this.forwardingParams, null, null, this.currentAccount, null, 1, false, editText);
        getContainer().addView(this.forwardingPreviewView, LayoutHelper.createFrame(-2, -2));
        if (editText != null) {
            AndroidUtilities.hideKeyboard(editText);
        }
    }

    /* renamed from: org.telegram.ui.Components.ShareAlert$1 */
    /* loaded from: classes6.dex */
    public class C55701 extends MessagePreviewView {
        final /* synthetic */ EditText val$focusedEditText;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C55701(Context context, ChatActivity chatActivity, MessagePreviewParams messagePreviewParams, TLRPC$User tLRPC$User, TLRPC$Chat tLRPC$Chat, int i, MessagePreviewView.ResourcesDelegate resourcesDelegate, int i2, boolean z, EditText editText) {
            super(context, chatActivity, messagePreviewParams, tLRPC$User, tLRPC$Chat, i, resourcesDelegate, i2, z);
            ShareAlert.this = r12;
            this.val$focusedEditText = editText;
        }

        @Override // org.telegram.p043ui.Components.MessagePreviewView
        protected void onDismiss(boolean z) {
            ShareAlert.this.setAllowNestedScroll(true);
            final EditText editText = this.val$focusedEditText;
            if (editText == null || !z) {
                return;
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ShareAlert$1$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ShareAlert.C55701.lambda$onDismiss$0(editText);
                }
            }, 50L);
        }

        public static /* synthetic */ void lambda$onDismiss$0(EditText editText) {
            if (AndroidUtilities.showKeyboard(editText)) {
                return;
            }
            editText.clearFocus();
            editText.requestFocus();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.telegram.p043ui.Components.MessagePreviewView
        public void didSendPressed() {
            dismiss(true);
            ShareAlert.this.sendInternal(false);
        }

        @Override // org.telegram.p043ui.Components.MessagePreviewView
        protected void onTransitionAnimationProgress(boolean z, float f) {
            if (z || f != BitmapDescriptorFactory.HUE_RED) {
                ShareAlert.this.blurredView.setAlpha(f);
                return;
            }
            ShareAlert.this.blurredView.setVisibility(8);
            ShareAlert.this.blurredView.setBackground(null);
        }
    }

    public void setStoryToShare(TL_stories$StoryItem tL_stories$StoryItem) {
        this.storyItem = tL_stories$StoryItem;
    }

    /* renamed from: org.telegram.ui.Components.ShareAlert$SwitchView */
    /* loaded from: classes6.dex */
    public class SwitchView extends FrameLayout {
        private AnimatorSet animator;
        private int currentTab;
        private int lastColor;
        private SimpleTextView leftTab;
        private LinearGradient linearGradient;
        private Paint paint;
        private RectF rect;
        private SimpleTextView rightTab;
        private View searchBackground;
        private View slidingView;

        protected void onTabSwitch(int i) {
            throw null;
        }

        public SwitchView(ShareAlert shareAlert, Context context) {
            super(context);
            this.paint = new Paint(1);
            this.rect = new RectF();
            View view = new View(context);
            this.searchBackground = view;
            view.setBackgroundDrawable(Theme.createRoundRectDrawable(AndroidUtilities.m104dp(18), shareAlert.getThemedColor(shareAlert.darkTheme ? Theme.key_voipgroup_searchBackground : Theme.key_dialogSearchBackground)));
            addView(this.searchBackground, LayoutHelper.createFrame(-1, 36, 51, 14, 0, 14, 0));
            View view2 = new View(context, shareAlert) { // from class: org.telegram.ui.Components.ShareAlert.SwitchView.1
                {
                    SwitchView.this = this;
                }

                @Override // android.view.View
                public void setTranslationX(float f) {
                    super.setTranslationX(f);
                    invalidate();
                }

                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    super.onDraw(canvas);
                    int offsetColor = AndroidUtilities.getOffsetColor(-9057429, -10513163, getTranslationX() / getMeasuredWidth(), 1.0f);
                    int offsetColor2 = AndroidUtilities.getOffsetColor(-11554882, -4629871, getTranslationX() / getMeasuredWidth(), 1.0f);
                    if (offsetColor != SwitchView.this.lastColor) {
                        SwitchView.this.linearGradient = new LinearGradient((float) BitmapDescriptorFactory.HUE_RED, (float) BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), (float) BitmapDescriptorFactory.HUE_RED, new int[]{offsetColor, offsetColor2}, (float[]) null, Shader.TileMode.CLAMP);
                        SwitchView.this.paint.setShader(SwitchView.this.linearGradient);
                    }
                    SwitchView.this.rect.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), getMeasuredHeight());
                    canvas.drawRoundRect(SwitchView.this.rect, AndroidUtilities.m104dp(18), AndroidUtilities.m104dp(18), SwitchView.this.paint);
                }
            };
            this.slidingView = view2;
            addView(view2, LayoutHelper.createFrame(-1, 36, 51, 14, 0, 14, 0));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.leftTab = simpleTextView;
            int i = Theme.key_voipgroup_nameText;
            simpleTextView.setTextColor(shareAlert.getThemedColor(i));
            this.leftTab.setTextSize(13);
            this.leftTab.setLeftDrawable(C3632R.C3634drawable.msg_tabs_mic1);
            this.leftTab.setText(LocaleController.getString("VoipGroupInviteCanSpeak", C3632R.string.VoipGroupInviteCanSpeak));
            this.leftTab.setGravity(17);
            addView(this.leftTab, LayoutHelper.createFrame(-1, -1, 51, 14, 0, 0, 0));
            this.leftTab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ShareAlert$SwitchView$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    ShareAlert.SwitchView.this.lambda$new$0(view3);
                }
            });
            SimpleTextView simpleTextView2 = new SimpleTextView(context);
            this.rightTab = simpleTextView2;
            simpleTextView2.setTextColor(shareAlert.getThemedColor(i));
            this.rightTab.setTextSize(13);
            this.rightTab.setLeftDrawable(C3632R.C3634drawable.msg_tabs_mic2);
            this.rightTab.setText(LocaleController.getString("VoipGroupInviteListenOnly", C3632R.string.VoipGroupInviteListenOnly));
            this.rightTab.setGravity(17);
            addView(this.rightTab, LayoutHelper.createFrame(-1, -1, 51, 0, 0, 14, 0));
            this.rightTab.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ShareAlert$SwitchView$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    ShareAlert.SwitchView.this.lambda$new$1(view3);
                }
            });
        }

        public /* synthetic */ void lambda$new$0(View view) {
            switchToTab(0);
        }

        public /* synthetic */ void lambda$new$1(View view) {
            switchToTab(1);
        }

        private void switchToTab(int i) {
            if (this.currentTab == i) {
                return;
            }
            this.currentTab = i;
            AnimatorSet animatorSet = this.animator;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            AnimatorSet animatorSet2 = new AnimatorSet();
            this.animator = animatorSet2;
            Animator[] animatorArr = new Animator[1];
            View view = this.slidingView;
            Property property = View.TRANSLATION_X;
            float[] fArr = new float[1];
            fArr[0] = this.currentTab == 0 ? BitmapDescriptorFactory.HUE_RED : view.getMeasuredWidth();
            animatorArr[0] = ObjectAnimator.ofFloat(view, property, fArr);
            animatorSet2.playTogether(animatorArr);
            this.animator.setDuration(180L);
            this.animator.setInterpolator(CubicBezierInterpolator.EASE_OUT);
            this.animator.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ShareAlert.SwitchView.2
                {
                    SwitchView.this = this;
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    SwitchView.this.animator = null;
                }
            });
            this.animator.start();
            onTabSwitch(this.currentTab);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            int size = (View.MeasureSpec.getSize(i) - AndroidUtilities.m104dp(28)) / 2;
            ((FrameLayout.LayoutParams) this.leftTab.getLayoutParams()).width = size;
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.rightTab.getLayoutParams();
            layoutParams.width = size;
            layoutParams.leftMargin = AndroidUtilities.m104dp(14) + size;
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.slidingView.getLayoutParams();
            layoutParams2.width = size;
            AnimatorSet animatorSet = this.animator;
            if (animatorSet != null) {
                animatorSet.cancel();
            }
            this.slidingView.setTranslationX(this.currentTab == 0 ? BitmapDescriptorFactory.HUE_RED : layoutParams2.width);
            super.onMeasure(i, i2);
        }
    }

    /* renamed from: org.telegram.ui.Components.ShareAlert$SearchField */
    /* loaded from: classes6.dex */
    public class SearchField extends FrameLayout {
        private ImageView clearSearchImageView;
        private CloseProgressDrawable2 progressDrawable;
        private View searchBackground;
        private EditTextBoldCursor searchEditText;
        private ImageView searchIconImageView;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SearchField(Context context) {
            super(context);
            ShareAlert.this = r9;
            View view = new View(context);
            this.searchBackground = view;
            view.setBackgroundDrawable(Theme.createRoundRectDrawable(AndroidUtilities.m104dp(18), r9.getThemedColor(r9.darkTheme ? Theme.key_voipgroup_searchBackground : Theme.key_dialogSearchBackground)));
            addView(this.searchBackground, LayoutHelper.createFrame(-1, 36, 51, 14, 11, 14, 0));
            ImageView imageView = new ImageView(context);
            this.searchIconImageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.CENTER);
            this.searchIconImageView.setImageResource(C3632R.C3634drawable.smiles_inputsearch);
            this.searchIconImageView.setColorFilter(new PorterDuffColorFilter(r9.getThemedColor(r9.darkTheme ? Theme.key_voipgroup_mutedIcon : Theme.key_dialogSearchIcon), PorterDuff.Mode.MULTIPLY));
            addView(this.searchIconImageView, LayoutHelper.createFrame(36, 36, 51, 16, 11, 0, 0));
            ImageView imageView2 = new ImageView(context);
            this.clearSearchImageView = imageView2;
            imageView2.setScaleType(ImageView.ScaleType.CENTER);
            ImageView imageView3 = this.clearSearchImageView;
            CloseProgressDrawable2 closeProgressDrawable2 = new CloseProgressDrawable2(r9) { // from class: org.telegram.ui.Components.ShareAlert.SearchField.1
                {
                    SearchField.this = this;
                }

                @Override // org.telegram.p043ui.Components.CloseProgressDrawable2
                protected int getCurrentColor() {
                    ShareAlert shareAlert = ShareAlert.this;
                    return shareAlert.getThemedColor(shareAlert.darkTheme ? Theme.key_voipgroup_searchPlaceholder : Theme.key_dialogSearchIcon);
                }
            };
            this.progressDrawable = closeProgressDrawable2;
            imageView3.setImageDrawable(closeProgressDrawable2);
            this.progressDrawable.setSide(AndroidUtilities.m104dp(7));
            this.clearSearchImageView.setScaleX(0.1f);
            this.clearSearchImageView.setScaleY(0.1f);
            this.clearSearchImageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            addView(this.clearSearchImageView, LayoutHelper.createFrame(36, 36, 53, 14, 11, 14, 0));
            this.clearSearchImageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ShareAlert$SearchField$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ShareAlert.SearchField.this.lambda$new$0(view2);
                }
            });
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
            this.searchEditText = editTextBoldCursor;
            editTextBoldCursor.setTextSize(1, 16.0f);
            this.searchEditText.setHintTextColor(r9.getThemedColor(r9.darkTheme ? Theme.key_voipgroup_searchPlaceholder : Theme.key_dialogSearchHint));
            this.searchEditText.setTextColor(r9.getThemedColor(r9.darkTheme ? Theme.key_voipgroup_searchText : Theme.key_dialogSearchText));
            this.searchEditText.setBackgroundDrawable(null);
            this.searchEditText.setPadding(0, 0, 0, 0);
            this.searchEditText.setMaxLines(1);
            this.searchEditText.setLines(1);
            this.searchEditText.setSingleLine(true);
            this.searchEditText.setImeOptions(268435459);
            this.searchEditText.setHint(LocaleController.getString("ShareSendTo", C3632R.string.ShareSendTo));
            this.searchEditText.setCursorColor(r9.getThemedColor(r9.darkTheme ? Theme.key_voipgroup_searchText : Theme.key_featuredStickers_addedIcon));
            this.searchEditText.setCursorSize(AndroidUtilities.m104dp(20));
            this.searchEditText.setCursorWidth(1.5f);
            addView(this.searchEditText, LayoutHelper.createFrame(-1, 40, 51, 54, 9, 46, 0));
            this.searchEditText.addTextChangedListener(new TextWatcher(r9) { // from class: org.telegram.ui.Components.ShareAlert.SearchField.2
                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
                }

                {
                    SearchField.this = this;
                }

                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                    boolean z = SearchField.this.searchEditText.length() > 0;
                    float alpha = SearchField.this.clearSearchImageView.getAlpha();
                    float f = BitmapDescriptorFactory.HUE_RED;
                    if (z != (alpha != BitmapDescriptorFactory.HUE_RED)) {
                        ViewPropertyAnimator animate = SearchField.this.clearSearchImageView.animate();
                        if (z) {
                            f = 1.0f;
                        }
                        animate.alpha(f).setDuration(150L).scaleX(z ? 1.0f : 0.1f).scaleY(z ? 1.0f : 0.1f).start();
                    }
                    if (!TextUtils.isEmpty(SearchField.this.searchEditText.getText())) {
                        ShareAlert.this.checkCurrentList(false);
                    }
                    if (ShareAlert.this.updateSearchAdapter) {
                        String obj = SearchField.this.searchEditText.getText().toString();
                        if (obj.length() != 0) {
                            if (ShareAlert.this.searchEmptyView != null) {
                                ShareAlert.this.searchEmptyView.title.setText(LocaleController.getString("NoResult", C3632R.string.NoResult));
                            }
                        } else if (ShareAlert.this.gridView.getAdapter() != ShareAlert.this.listAdapter) {
                            int currentTop = ShareAlert.this.getCurrentTop();
                            ShareAlert.this.searchEmptyView.title.setText(LocaleController.getString("NoResult", C3632R.string.NoResult));
                            ShareAlert.this.searchEmptyView.showProgress(false, true);
                            ShareAlert.this.checkCurrentList(false);
                            ShareAlert.this.listAdapter.notifyDataSetChanged();
                            if (currentTop > 0) {
                                ShareAlert.this.layoutManager.scrollToPositionWithOffset(0, -currentTop);
                            }
                        }
                        if (ShareAlert.this.searchAdapter != null) {
                            ShareAlert.this.searchAdapter.searchDialogs(obj);
                        }
                    }
                }
            });
            this.searchEditText.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.Components.ShareAlert$SearchField$$ExternalSyntheticLambda1
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                    boolean lambda$new$1;
                    lambda$new$1 = ShareAlert.SearchField.this.lambda$new$1(textView, i, keyEvent);
                    return lambda$new$1;
                }
            });
        }

        public /* synthetic */ void lambda$new$0(View view) {
            ShareAlert.this.updateSearchAdapter = true;
            this.searchEditText.setText("");
            AndroidUtilities.showKeyboard(this.searchEditText);
        }

        public /* synthetic */ boolean lambda$new$1(TextView textView, int i, KeyEvent keyEvent) {
            if (keyEvent != null) {
                if ((keyEvent.getAction() == 1 && keyEvent.getKeyCode() == 84) || (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 66)) {
                    AndroidUtilities.hideKeyboard(this.searchEditText);
                    return false;
                }
                return false;
            }
            return false;
        }

        public void hideKeyboard() {
            AndroidUtilities.hideKeyboard(this.searchEditText);
        }
    }

    public static ShareAlert createShareAlert(Context context, MessageObject messageObject, String str, boolean z, String str2, boolean z2) {
        ArrayList arrayList;
        if (messageObject != null) {
            arrayList = new ArrayList();
            arrayList.add(messageObject);
        } else {
            arrayList = null;
        }
        return new ShareAlert(context, null, arrayList, str, null, z, str2, null, z2, false);
    }

    public ShareAlert(Context context, ArrayList<MessageObject> arrayList, String str, boolean z, String str2, boolean z2) {
        this(context, arrayList, str, z, str2, z2, null);
    }

    public ShareAlert(Context context, ArrayList<MessageObject> arrayList, String str, boolean z, String str2, boolean z2, Theme.ResourcesProvider resourcesProvider) {
        this(context, null, arrayList, str, null, z, str2, null, z2, false, resourcesProvider);
    }

    public ShareAlert(Context context, ChatActivity chatActivity, ArrayList<MessageObject> arrayList, String str, String str2, boolean z, String str3, String str4, boolean z2, boolean z3) {
        this(context, chatActivity, arrayList, str, str2, z, str3, str4, z2, z3, null);
    }

    public ShareAlert(final Context context, ChatActivity chatActivity, ArrayList<MessageObject> arrayList, String str, String str2, boolean z, String str3, String str4, boolean z2, boolean z3, Theme.ResourcesProvider resourcesProvider) {
        super(context, true, resourcesProvider);
        this.sendingText = new String[2];
        this.shadow = new View[2];
        this.shadowAnimation = new AnimatorSet[2];
        this.selectedDialogs = new LongSparseArray<>();
        this.selectedDialogTopics = new HashMap();
        this.containerViewTop = -1;
        this.fullyShown = false;
        this.rect = new RectF();
        this.paint = new Paint(1);
        this.textPaint = new TextPaint(1);
        this.linkToCopy = new String[2];
        this.recentSearchObjects = new ArrayList<>();
        new LongSparseArray();
        this.showSendersName = true;
        this.lastOffset = Integer.MAX_VALUE;
        this.resourcesProvider = resourcesProvider;
        if (context instanceof Activity) {
            this.parentActivity = (Activity) context;
        }
        this.darkTheme = z3;
        this.parentFragment = chatActivity;
        this.shadowDrawable = context.getResources().getDrawable(C3632R.C3634drawable.sheet_shadow_round).mutate();
        int i = this.darkTheme ? Theme.key_voipgroup_inviteMembersBackground : Theme.key_dialogBackground;
        this.behindKeyboardColorKey = i;
        int themedColor = getThemedColor(i);
        this.shadowDrawable.setColorFilter(new PorterDuffColorFilter(themedColor, PorterDuff.Mode.MULTIPLY));
        fixNavigationBar(themedColor);
        this.isFullscreen = z2;
        String[] strArr = this.linkToCopy;
        strArr[0] = str3;
        strArr[1] = str4;
        this.sendingMessageObjects = arrayList;
        this.searchAdapter = new ShareSearchAdapter(context);
        this.isChannel = z;
        String[] strArr2 = this.sendingText;
        strArr2[0] = str;
        strArr2[1] = str2;
        this.useSmoothKeyboard = true;
        super.setDelegate(new BottomSheet.BottomSheetDelegate() { // from class: org.telegram.ui.Components.ShareAlert.2
            {
                ShareAlert.this = this;
            }

            @Override // org.telegram.p043ui.ActionBar.BottomSheet.BottomSheetDelegate, org.telegram.p043ui.ActionBar.BottomSheet.BottomSheetDelegateInterface
            public void onOpenAnimationEnd() {
                ShareAlert.this.fullyShown = true;
            }
        });
        ArrayList<MessageObject> arrayList2 = this.sendingMessageObjects;
        if (arrayList2 != null) {
            int size = arrayList2.size();
            for (int i2 = 0; i2 < size; i2++) {
                MessageObject messageObject = this.sendingMessageObjects.get(i2);
                if (messageObject != null && messageObject.isPoll()) {
                    int i3 = messageObject.isPublicPoll() ? 2 : 1;
                    this.hasPoll = i3;
                    if (i3 == 2) {
                        break;
                    }
                }
            }
        }
        if (z) {
            this.loadingLink = true;
            TLRPC$TL_channels_exportMessageLink tLRPC$TL_channels_exportMessageLink = new TLRPC$TL_channels_exportMessageLink();
            tLRPC$TL_channels_exportMessageLink.f1641id = arrayList.get(0).getId();
            tLRPC$TL_channels_exportMessageLink.channel = MessagesController.getInstance(this.currentAccount).getInputChannel(arrayList.get(0).messageOwner.peer_id.channel_id);
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_channels_exportMessageLink, new RequestDelegate() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda17
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ShareAlert.this.lambda$new$1(context, tLObject, tLRPC$TL_error);
                }
            });
        }
        SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.Components.ShareAlert.3
            private int fromOffsetTop;
            private int fromScrollY;
            private boolean fullHeight;
            private int lastMeasuredWidth;
            private boolean lightStatusBar;
            private int previousTopOffset;
            private int toOffsetTop;
            private int toScrollY;
            private int topOffset;
            private boolean ignoreLayout = false;
            private RectF rect1 = new RectF();

            {
                ShareAlert.this = this;
                this.adjustPanLayoutHelper = new AdjustPanLayoutHelper(this) { // from class: org.telegram.ui.Components.ShareAlert.3.1
                    {
                        C55903.this = this;
                    }

                    @Override // org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper
                    public void onTransitionStart(boolean z4, int i4) {
                        super.onTransitionStart(z4, i4);
                        if (ShareAlert.this.previousScrollOffsetY == ShareAlert.this.scrollOffsetY) {
                            C55903.this.fromScrollY = -1;
                        } else {
                            C55903 c55903 = C55903.this;
                            c55903.fromScrollY = ShareAlert.this.previousScrollOffsetY;
                            C55903 c559032 = C55903.this;
                            c559032.toScrollY = ShareAlert.this.scrollOffsetY;
                            ShareAlert.this.panTranslationMoveLayout = true;
                            C55903 c559033 = C55903.this;
                            ShareAlert.this.scrollOffsetY = c559033.fromScrollY;
                        }
                        if (C55903.this.topOffset != C55903.this.previousTopOffset) {
                            C55903.this.fromOffsetTop = 0;
                            C55903.this.toOffsetTop = 0;
                            ShareAlert.this.panTranslationMoveLayout = true;
                            if (!z4) {
                                C55903 c559034 = C55903.this;
                                C55903.access$3520(c559034, c559034.topOffset - C55903.this.previousTopOffset);
                            } else {
                                C55903 c559035 = C55903.this;
                                C55903.access$3512(c559035, c559035.topOffset - C55903.this.previousTopOffset);
                            }
                            C55903 c559036 = C55903.this;
                            ShareAlert.this.scrollOffsetY = z4 ? c559036.fromScrollY : c559036.toScrollY;
                        } else {
                            C55903.this.fromOffsetTop = -1;
                        }
                        ShareAlert.this.gridView.setTopGlowOffset((int) (ShareAlert.this.currentPanTranslationY + ShareAlert.this.scrollOffsetY));
                        ShareAlert.this.frameLayout.setTranslationY(ShareAlert.this.currentPanTranslationY + ShareAlert.this.scrollOffsetY);
                        ShareAlert.this.searchEmptyView.setTranslationY(ShareAlert.this.currentPanTranslationY + ShareAlert.this.scrollOffsetY);
                        invalidate();
                    }

                    @Override // org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper
                    public void onTransitionEnd() {
                        super.onTransitionEnd();
                        ShareAlert.this.panTranslationMoveLayout = false;
                        ShareAlert shareAlert = ShareAlert.this;
                        shareAlert.previousScrollOffsetY = shareAlert.scrollOffsetY;
                        ShareAlert.this.gridView.setTopGlowOffset(ShareAlert.this.scrollOffsetY);
                        ShareAlert.this.frameLayout.setTranslationY(ShareAlert.this.scrollOffsetY);
                        ShareAlert.this.searchEmptyView.setTranslationY(ShareAlert.this.scrollOffsetY);
                        ShareAlert.this.gridView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                        ShareAlert.this.searchGridView.setTranslationY(BitmapDescriptorFactory.HUE_RED);
                    }

                    @Override // org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper
                    public void onPanTranslationUpdate(float f, float f2, boolean z4) {
                        super.onPanTranslationUpdate(f, f2, z4);
                        for (int i4 = 0; i4 < ((BottomSheet) ShareAlert.this).containerView.getChildCount(); i4++) {
                            if (((BottomSheet) ShareAlert.this).containerView.getChildAt(i4) != ShareAlert.this.pickerBottomLayout && ((BottomSheet) ShareAlert.this).containerView.getChildAt(i4) != ShareAlert.this.shadow[1] && ((BottomSheet) ShareAlert.this).containerView.getChildAt(i4) != ShareAlert.this.sharesCountLayout && ((BottomSheet) ShareAlert.this).containerView.getChildAt(i4) != ShareAlert.this.frameLayout2 && ((BottomSheet) ShareAlert.this).containerView.getChildAt(i4) != ShareAlert.this.writeButtonContainer && ((BottomSheet) ShareAlert.this).containerView.getChildAt(i4) != ShareAlert.this.selectedCountView && ((BottomSheet) ShareAlert.this).containerView.getChildAt(i4) != ShareAlert.this.forwardingOptionsButton) {
                                ((BottomSheet) ShareAlert.this).containerView.getChildAt(i4).setTranslationY(f);
                            }
                        }
                        ShareAlert.this.currentPanTranslationY = f;
                        if (C55903.this.fromScrollY == -1) {
                            if (C55903.this.fromOffsetTop != -1) {
                                C55903 c55903 = C55903.this;
                                float f3 = 1.0f - f2;
                                ShareAlert.this.scrollOffsetY = (int) ((c55903.fromOffsetTop * f3) + (C55903.this.toOffsetTop * f2));
                                if (!z4) {
                                    f3 = f2;
                                }
                                if (z4) {
                                    ShareAlert.this.gridView.setTranslationY(ShareAlert.this.currentPanTranslationY - ((C55903.this.fromOffsetTop - C55903.this.toOffsetTop) * f2));
                                } else {
                                    ShareAlert.this.gridView.setTranslationY(ShareAlert.this.currentPanTranslationY + ((C55903.this.toOffsetTop - C55903.this.fromOffsetTop) * f3));
                                }
                            }
                        } else {
                            if (!z4) {
                                f2 = 1.0f - f2;
                            }
                            C55903 c559032 = C55903.this;
                            float f4 = 1.0f - f2;
                            ShareAlert.this.scrollOffsetY = (int) ((c559032.fromScrollY * f4) + (C55903.this.toScrollY * f2));
                            float f5 = ShareAlert.this.currentPanTranslationY + ((C55903.this.fromScrollY - C55903.this.toScrollY) * f4);
                            ShareAlert.this.gridView.setTranslationY(f5);
                            if (z4) {
                                ShareAlert.this.searchGridView.setTranslationY(f5);
                            } else {
                                ShareAlert.this.searchGridView.setTranslationY(f5 + ShareAlert.this.gridView.getPaddingTop());
                            }
                        }
                        ShareAlert.this.gridView.setTopGlowOffset((int) (ShareAlert.this.scrollOffsetY + ShareAlert.this.currentPanTranslationY));
                        ShareAlert.this.frameLayout.setTranslationY(ShareAlert.this.scrollOffsetY + ShareAlert.this.currentPanTranslationY);
                        ShareAlert.this.searchEmptyView.setTranslationY(ShareAlert.this.scrollOffsetY + ShareAlert.this.currentPanTranslationY);
                        ShareAlert.this.frameLayout2.invalidate();
                        ShareAlert shareAlert = ShareAlert.this;
                        shareAlert.setCurrentPanTranslationY(shareAlert.currentPanTranslationY);
                        invalidate();
                    }

                    @Override // org.telegram.p043ui.ActionBar.AdjustPanLayoutHelper
                    protected boolean heightAnimationEnabled() {
                        if (ShareAlert.this.isDismissed() || !ShareAlert.this.fullyShown) {
                            return false;
                        }
                        return !ShareAlert.this.commentTextView.isPopupVisible();
                    }
                };
                this.lightStatusBar = AndroidUtilities.computePerceivedBrightness(this.getThemedColor(this.darkTheme ? Theme.key_voipgroup_inviteMembersBackground : Theme.key_dialogBackground)) > 0.721f;
            }

            static /* synthetic */ int access$3512(C55903 c55903, int i4) {
                int i5 = c55903.toOffsetTop + i4;
                c55903.toOffsetTop = i5;
                return i5;
            }

            static /* synthetic */ int access$3520(C55903 c55903, int i4) {
                int i5 = c55903.toOffsetTop - i4;
                c55903.toOffsetTop = i5;
                return i5;
            }

            @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            public void onAttachedToWindow() {
                super.onAttachedToWindow();
                this.adjustPanLayoutHelper.setResizableView(this);
                this.adjustPanLayoutHelper.onAttach();
            }

            @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            public void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                this.adjustPanLayoutHelper.onDetach();
            }

            @Override // android.widget.FrameLayout, android.view.View
            protected void onMeasure(int i4, int i5) {
                int size2;
                int m104dp;
                if (getLayoutParams().height > 0) {
                    size2 = getLayoutParams().height;
                } else {
                    size2 = View.MeasureSpec.getSize(i5);
                }
                int size3 = View.MeasureSpec.getSize(i4);
                if (size3 != this.lastMeasuredWidth) {
                    if (ShareAlert.this.forwardingPreviewView != null && ShareAlert.this.forwardingPreviewView.isShowing()) {
                        ShareAlert.this.forwardingPreviewView.dismiss(false);
                    }
                    this.lastMeasuredWidth = size3;
                }
                ShareAlert.this.layoutManager.setNeedFixGap(getLayoutParams().height <= 0);
                ShareAlert.this.searchLayoutManager.setNeedFixGap(getLayoutParams().height <= 0);
                if (Build.VERSION.SDK_INT >= 21 && !((BottomSheet) ShareAlert.this).isFullscreen) {
                    this.ignoreLayout = true;
                    setPadding(((BottomSheet) ShareAlert.this).backgroundPaddingLeft, AndroidUtilities.statusBarHeight, ((BottomSheet) ShareAlert.this).backgroundPaddingLeft, 0);
                    this.ignoreLayout = false;
                }
                int paddingTop = size2 - getPaddingTop();
                int m104dp2 = AndroidUtilities.m104dp(103) + AndroidUtilities.m104dp(48) + (Math.max(2, (int) Math.ceil(Math.max(ShareAlert.this.searchAdapter.getItemCount(), ShareAlert.this.listAdapter.getItemCount() - 1) / 4.0f)) * AndroidUtilities.m104dp(103)) + ((BottomSheet) ShareAlert.this).backgroundPaddingTop;
                if (ShareAlert.this.topicsGridView.getVisibility() != 8 && (m104dp = AndroidUtilities.m104dp(103) + AndroidUtilities.m104dp(48) + (Math.max(2, (int) Math.ceil((ShareAlert.this.shareTopicsAdapter.getItemCount() - 1) / 4.0f)) * AndroidUtilities.m104dp(103)) + ((BottomSheet) ShareAlert.this).backgroundPaddingTop) > m104dp2) {
                    m104dp2 = AndroidUtilities.lerp(m104dp2, m104dp, ShareAlert.this.topicsGridView.getAlpha());
                }
                int m104dp3 = (m104dp2 < paddingTop ? 0 : paddingTop - ((paddingTop / 5) * 3)) + AndroidUtilities.m104dp(8);
                if (ShareAlert.this.gridView.getPaddingTop() != m104dp3) {
                    this.ignoreLayout = true;
                    ShareAlert.this.gridView.setPadding(0, m104dp3, 0, AndroidUtilities.m104dp(48));
                    ShareAlert.this.topicsGridView.setPadding(0, m104dp3, 0, AndroidUtilities.m104dp(48));
                    this.ignoreLayout = false;
                }
                if (((BottomSheet) ShareAlert.this).keyboardVisible && getLayoutParams().height <= 0 && ShareAlert.this.searchGridView.getPaddingTop() != m104dp3) {
                    this.ignoreLayout = true;
                    ShareAlert.this.searchGridView.setPadding(0, 0, 0, AndroidUtilities.m104dp(48));
                    this.ignoreLayout = false;
                }
                boolean z4 = m104dp2 >= size2;
                this.fullHeight = z4;
                this.topOffset = z4 ? 0 : size2 - m104dp2;
                this.ignoreLayout = true;
                ShareAlert.this.checkCurrentList(false);
                this.ignoreLayout = false;
                setMeasuredDimension(View.MeasureSpec.getSize(i4), size2);
                onMeasureInternal(i4, View.MeasureSpec.makeMeasureSpec(size2, 1073741824));
            }

            private void onMeasureInternal(int i4, int i5) {
                int size2 = View.MeasureSpec.getSize(i4);
                int size3 = View.MeasureSpec.getSize(i5);
                int i6 = size2 - (((BottomSheet) ShareAlert.this).backgroundPaddingLeft * 2);
                if (!ShareAlert.this.commentTextView.isWaitingForKeyboardOpen() && AndroidUtilities.m104dp(20) >= 0 && !ShareAlert.this.commentTextView.isPopupShowing() && !ShareAlert.this.commentTextView.isAnimatePopupClosing()) {
                    this.ignoreLayout = true;
                    ShareAlert.this.commentTextView.hideEmojiView();
                    this.ignoreLayout = false;
                }
                this.ignoreLayout = true;
                if (AndroidUtilities.m104dp(20) < 0) {
                    ShareAlert.this.commentTextView.hideEmojiView();
                    if (ShareAlert.this.pickerBottomLayout != null) {
                        ShareAlert.this.pickerBottomLayout.setVisibility(8);
                        if (ShareAlert.this.sharesCountLayout != null) {
                            ShareAlert.this.sharesCountLayout.setVisibility(8);
                        }
                    }
                } else {
                    if (!AndroidUtilities.isInMultiwindow) {
                        size3 -= ((BottomSheet) ShareAlert.this).keyboardVisible ? 0 : ShareAlert.this.commentTextView.getEmojiPadding();
                        i5 = View.MeasureSpec.makeMeasureSpec(size3, 1073741824);
                    }
                    int i7 = ShareAlert.this.commentTextView.isPopupShowing() ? 8 : 0;
                    if (ShareAlert.this.pickerBottomLayout != null) {
                        ShareAlert.this.pickerBottomLayout.setVisibility(i7);
                        if (ShareAlert.this.sharesCountLayout != null) {
                            ShareAlert.this.sharesCountLayout.setVisibility(i7);
                        }
                    }
                }
                this.ignoreLayout = false;
                int childCount = getChildCount();
                for (int i8 = 0; i8 < childCount; i8++) {
                    View childAt = getChildAt(i8);
                    if (childAt != null && childAt.getVisibility() != 8) {
                        if (ShareAlert.this.commentTextView != null && ShareAlert.this.commentTextView.isPopupView(childAt)) {
                            if (AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) {
                                if (AndroidUtilities.isTablet()) {
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.m104dp(AndroidUtilities.isTablet() ? 200 : 320), (size3 - AndroidUtilities.statusBarHeight) + getPaddingTop()), 1073741824));
                                } else {
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), View.MeasureSpec.makeMeasureSpec((size3 - AndroidUtilities.statusBarHeight) + getPaddingTop(), 1073741824));
                                }
                            } else {
                                childAt.measure(View.MeasureSpec.makeMeasureSpec(i6, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getLayoutParams().height, 1073741824));
                            }
                        } else {
                            measureChildWithMargins(childAt, i4, 0, i5, 0);
                        }
                    }
                }
            }

            /* JADX WARN: Removed duplicated region for block: B:100:0x00d3  */
            /* JADX WARN: Removed duplicated region for block: B:101:0x00dc  */
            /* JADX WARN: Removed duplicated region for block: B:85:0x008c  */
            /* JADX WARN: Removed duplicated region for block: B:92:0x00a9  */
            /* JADX WARN: Removed duplicated region for block: B:96:0x00c1  */
            @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public void onLayout(boolean r11, int r12, int r13, int r14, int r15) {
                /*
                    Method dump skipped, instructions count: 248
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ShareAlert.C55903.onLayout(boolean, int, int, int, int):void");
            }

            @Override // android.view.ViewGroup
            public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                if (!this.fullHeight) {
                    if (motionEvent.getAction() == 0 && motionEvent.getY() < this.topOffset - AndroidUtilities.m104dp(30)) {
                        ShareAlert.this.dismiss();
                        return true;
                    }
                } else if (motionEvent.getAction() == 0 && ShareAlert.this.scrollOffsetY != 0 && motionEvent.getY() < ShareAlert.this.scrollOffsetY - AndroidUtilities.m104dp(30)) {
                    ShareAlert.this.dismiss();
                    return true;
                }
                return super.onInterceptTouchEvent(motionEvent);
            }

            @Override // android.view.View
            public boolean onTouchEvent(MotionEvent motionEvent) {
                return !ShareAlert.this.isDismissed() && super.onTouchEvent(motionEvent);
            }

            @Override // android.view.View, android.view.ViewParent
            public void requestLayout() {
                if (this.ignoreLayout) {
                    return;
                }
                super.requestLayout();
            }

            /* JADX WARN: Removed duplicated region for block: B:65:0x00cb  */
            /* JADX WARN: Removed duplicated region for block: B:72:0x0150  */
            /* JADX WARN: Removed duplicated region for block: B:73:0x0153  */
            /* JADX WARN: Removed duplicated region for block: B:76:0x0173  */
            @Override // android.view.View
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            protected void onDraw(android.graphics.Canvas r12) {
                /*
                    Method dump skipped, instructions count: 419
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ShareAlert.C55903.onDraw(android.graphics.Canvas):void");
            }

            @Override // org.telegram.p043ui.Components.SizeNotifierFrameLayout, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                canvas.save();
                canvas.clipRect(BitmapDescriptorFactory.HUE_RED, getPaddingTop() + ShareAlert.this.currentPanTranslationY, getMeasuredWidth(), getMeasuredHeight() + ShareAlert.this.currentPanTranslationY + AndroidUtilities.m104dp(50));
                super.dispatchDraw(canvas);
                canvas.restore();
            }
        };
        this.sizeNotifierFrameLayout = sizeNotifierFrameLayout;
        this.containerView = sizeNotifierFrameLayout;
        sizeNotifierFrameLayout.setWillNotDraw(false);
        this.containerView.setClipChildren(false);
        ViewGroup viewGroup = this.containerView;
        int i4 = this.backgroundPaddingLeft;
        viewGroup.setPadding(i4, 0, i4, 0);
        FrameLayout frameLayout = new FrameLayout(context);
        this.frameLayout = frameLayout;
        frameLayout.setBackgroundColor(getThemedColor(this.darkTheme ? Theme.key_voipgroup_inviteMembersBackground : Theme.key_dialogBackground));
        if (this.darkTheme && this.linkToCopy[1] != null) {
            SwitchView switchView = new SwitchView(context) { // from class: org.telegram.ui.Components.ShareAlert.4
                {
                    ShareAlert.this = this;
                }

                @Override // org.telegram.p043ui.Components.ShareAlert.SwitchView
                protected void onTabSwitch(int i5) {
                    if (ShareAlert.this.pickerBottomLayout == null) {
                        return;
                    }
                    if (i5 == 0) {
                        ShareAlert.this.pickerBottomLayout.setText(LocaleController.getString("VoipGroupCopySpeakerLink", C3632R.string.VoipGroupCopySpeakerLink).toUpperCase());
                    } else {
                        ShareAlert.this.pickerBottomLayout.setText(LocaleController.getString("VoipGroupCopyListenLink", C3632R.string.VoipGroupCopyListenLink).toUpperCase());
                    }
                }
            };
            this.switchView = switchView;
            this.frameLayout.addView(switchView, LayoutHelper.createFrame(-1, 36, 51, 0, 11, 0, 0));
        }
        SearchField searchField = new SearchField(context);
        this.searchView = searchField;
        this.frameLayout.addView(searchField, LayoutHelper.createFrame(-1, 58, 83));
        C3704ActionBar c3704ActionBar = new C3704ActionBar(context);
        this.topicsBackActionBar = c3704ActionBar;
        c3704ActionBar.setOccupyStatusBar(false);
        this.topicsBackActionBar.setBackButtonImage(C3632R.C3634drawable.ic_ab_back);
        this.topicsBackActionBar.setTitleColor(getThemedColor(Theme.key_dialogTextBlack));
        this.topicsBackActionBar.setSubtitleColor(getThemedColor(Theme.key_dialogTextGray2));
        this.topicsBackActionBar.setItemsColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText2), false);
        this.topicsBackActionBar.setItemsBackgroundColor(Theme.getColor(Theme.key_actionBarWhiteSelector), false);
        this.topicsBackActionBar.setActionBarMenuOnItemClick(new C3704ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.Components.ShareAlert.5
            {
                ShareAlert.this = this;
            }

            @Override // org.telegram.p043ui.ActionBar.C3704ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i5) {
                ShareAlert.this.onBackPressed();
            }
        });
        this.topicsBackActionBar.setVisibility(8);
        this.frameLayout.addView(this.topicsBackActionBar, LayoutHelper.createFrame(-1, 58, 83));
        RecyclerListView recyclerListView = new RecyclerListView(context, resourcesProvider);
        this.topicsGridView = recyclerListView;
        GridLayoutManager gridLayoutManager = new GridLayoutManager(context, 4);
        this.topicsLayoutManager = gridLayoutManager;
        recyclerListView.setLayoutManager(gridLayoutManager);
        this.topicsLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.ShareAlert.6
            {
                ShareAlert.this = this;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i5) {
                if (i5 == 0) {
                    return ShareAlert.this.topicsLayoutManager.getSpanCount();
                }
                return 1;
            }
        });
        this.topicsGridView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ShareAlert.7
            {
                ShareAlert.this = this;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i5, int i6) {
                if (i6 != 0) {
                    ShareAlert.this.updateLayout();
                    ShareAlert shareAlert = ShareAlert.this;
                    shareAlert.previousScrollOffsetY = shareAlert.scrollOffsetY;
                }
            }
        });
        RecyclerListView recyclerListView2 = this.topicsGridView;
        ShareTopicsAdapter shareTopicsAdapter = new ShareTopicsAdapter(context);
        this.shareTopicsAdapter = shareTopicsAdapter;
        recyclerListView2.setAdapter(shareTopicsAdapter);
        this.topicsGridView.setGlowColor(getThemedColor(this.darkTheme ? Theme.key_voipgroup_inviteMembersBackground : Theme.key_dialogScrollGlow));
        this.topicsGridView.setVerticalScrollBarEnabled(false);
        this.topicsGridView.setHorizontalScrollBarEnabled(false);
        this.topicsGridView.setOverScrollMode(2);
        this.topicsGridView.setSelectorDrawableColor(0);
        this.topicsGridView.setItemSelectorColorProvider(new GenericProvider() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda15
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                Integer lambda$new$2;
                lambda$new$2 = ShareAlert.lambda$new$2((Integer) obj);
                return lambda$new$2;
            }
        });
        this.topicsGridView.setPadding(0, 0, 0, AndroidUtilities.m104dp(48));
        this.topicsGridView.setClipToPadding(false);
        this.topicsGridView.addItemDecoration(new RecyclerView.ItemDecoration(this) { // from class: org.telegram.ui.Components.ShareAlert.8
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                RecyclerListView.Holder holder = (RecyclerListView.Holder) recyclerView.getChildViewHolder(view);
                if (holder != null) {
                    int adapterPosition = holder.getAdapterPosition() % 4;
                    rect.left = adapterPosition == 0 ? 0 : AndroidUtilities.m104dp(4);
                    rect.right = adapterPosition != 3 ? AndroidUtilities.m104dp(4) : 0;
                    return;
                }
                rect.left = AndroidUtilities.m104dp(4);
                rect.right = AndroidUtilities.m104dp(4);
            }
        });
        this.topicsGridView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda21
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i5) {
                ShareAlert.this.lambda$new$3(view, i5);
            }
        });
        this.topicsGridView.setVisibility(8);
        this.containerView.addView(this.topicsGridView, LayoutHelper.createFrame(-1, -1, 51));
        RecyclerListView recyclerListView3 = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ShareAlert.9
            {
                ShareAlert.this = this;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView
            protected boolean allowSelectChildAtPosition(float f, float f2) {
                return f2 >= ((float) (AndroidUtilities.m104dp((!ShareAlert.this.darkTheme || ShareAlert.this.linkToCopy[1] == null) ? 58 : 111) + (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)));
            }

            @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
            public void draw(Canvas canvas) {
                if (ShareAlert.this.topicsGridView.getVisibility() != 8) {
                    canvas.save();
                    canvas.clipRect(0, ShareAlert.this.scrollOffsetY + AndroidUtilities.m104dp((!ShareAlert.this.darkTheme || ShareAlert.this.linkToCopy[1] == null) ? 58 : 111), getWidth(), getHeight());
                }
                super.draw(canvas);
                if (ShareAlert.this.topicsGridView.getVisibility() != 8) {
                    canvas.restore();
                }
            }
        };
        this.gridView = recyclerListView3;
        recyclerListView3.setSelectorDrawableColor(0);
        this.gridView.setItemSelectorColorProvider(new GenericProvider() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda14
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                Integer lambda$new$4;
                lambda$new$4 = ShareAlert.lambda$new$4((Integer) obj);
                return lambda$new$4;
            }
        });
        this.gridView.setPadding(0, 0, 0, AndroidUtilities.m104dp(48));
        this.gridView.setClipToPadding(false);
        RecyclerListView recyclerListView4 = this.gridView;
        GridLayoutManager gridLayoutManager2 = new GridLayoutManager(getContext(), 4);
        this.layoutManager = gridLayoutManager2;
        recyclerListView4.setLayoutManager(gridLayoutManager2);
        this.layoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.ShareAlert.10
            {
                ShareAlert.this = this;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i5) {
                if (i5 == 0) {
                    return ShareAlert.this.layoutManager.getSpanCount();
                }
                return 1;
            }
        });
        this.gridView.setHorizontalScrollBarEnabled(false);
        this.gridView.setVerticalScrollBarEnabled(false);
        this.gridView.setOverScrollMode(2);
        this.gridView.addItemDecoration(new RecyclerView.ItemDecoration(this) { // from class: org.telegram.ui.Components.ShareAlert.11
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                RecyclerListView.Holder holder = (RecyclerListView.Holder) recyclerView.getChildViewHolder(view);
                if (holder != null) {
                    int adapterPosition = holder.getAdapterPosition() % 4;
                    rect.left = adapterPosition == 0 ? 0 : AndroidUtilities.m104dp(4);
                    rect.right = adapterPosition != 3 ? AndroidUtilities.m104dp(4) : 0;
                    return;
                }
                rect.left = AndroidUtilities.m104dp(4);
                rect.right = AndroidUtilities.m104dp(4);
            }
        });
        this.containerView.addView(this.gridView, LayoutHelper.createFrame(-1, -1, 51, 0, 0, 0, 0));
        RecyclerListView recyclerListView5 = this.gridView;
        ShareDialogsAdapter shareDialogsAdapter = new ShareDialogsAdapter(context);
        this.listAdapter = shareDialogsAdapter;
        recyclerListView5.setAdapter(shareDialogsAdapter);
        this.gridView.setGlowColor(getThemedColor(this.darkTheme ? Theme.key_voipgroup_inviteMembersBackground : Theme.key_dialogScrollGlow));
        this.gridView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda19
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i5) {
                ShareAlert.this.lambda$new$5(view, i5);
            }
        });
        this.gridView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ShareAlert.12
            {
                ShareAlert.this = this;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i5, int i6) {
                if (i6 != 0) {
                    ShareAlert.this.updateLayout();
                    ShareAlert shareAlert = ShareAlert.this;
                    shareAlert.previousScrollOffsetY = shareAlert.scrollOffsetY;
                }
            }
        });
        RecyclerListView recyclerListView6 = new RecyclerListView(context, resourcesProvider) { // from class: org.telegram.ui.Components.ShareAlert.13
            {
                ShareAlert.this = this;
            }

            @Override // org.telegram.p043ui.Components.RecyclerListView
            protected boolean allowSelectChildAtPosition(float f, float f2) {
                return f2 >= ((float) (AndroidUtilities.m104dp((!ShareAlert.this.darkTheme || ShareAlert.this.linkToCopy[1] == null) ? 58 : 111) + (Build.VERSION.SDK_INT >= 21 ? AndroidUtilities.statusBarHeight : 0)));
            }

            @Override // androidx.recyclerview.widget.RecyclerView, android.view.View
            public void draw(Canvas canvas) {
                if (ShareAlert.this.topicsGridView.getVisibility() != 8) {
                    canvas.save();
                    canvas.clipRect(0, ShareAlert.this.scrollOffsetY + AndroidUtilities.m104dp((!ShareAlert.this.darkTheme || ShareAlert.this.linkToCopy[1] == null) ? 58 : 111), getWidth(), getHeight());
                }
                super.draw(canvas);
                if (ShareAlert.this.topicsGridView.getVisibility() != 8) {
                    canvas.restore();
                }
            }
        };
        this.searchGridView = recyclerListView6;
        recyclerListView6.setItemSelectorColorProvider(new GenericProvider() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda16
            @Override // org.telegram.messenger.GenericProvider
            public final Object provide(Object obj) {
                Integer lambda$new$6;
                lambda$new$6 = ShareAlert.lambda$new$6((Integer) obj);
                return lambda$new$6;
            }
        });
        this.searchGridView.setSelectorDrawableColor(0);
        this.searchGridView.setPadding(0, 0, 0, AndroidUtilities.m104dp(48));
        this.searchGridView.setClipToPadding(false);
        RecyclerListView recyclerListView7 = this.searchGridView;
        FillLastGridLayoutManager fillLastGridLayoutManager = new FillLastGridLayoutManager(getContext(), 4, 0, this.searchGridView);
        this.searchLayoutManager = fillLastGridLayoutManager;
        recyclerListView7.setLayoutManager(fillLastGridLayoutManager);
        this.searchLayoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: org.telegram.ui.Components.ShareAlert.14
            {
                ShareAlert.this = this;
            }

            @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
            public int getSpanSize(int i5) {
                return ShareAlert.this.searchAdapter.getSpanSize(4, i5);
            }
        });
        this.searchGridView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda20
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i5) {
                ShareAlert.this.lambda$new$7(view, i5);
            }
        });
        this.searchGridView.setHasFixedSize(true);
        this.searchGridView.setItemAnimator(null);
        this.searchGridView.setHorizontalScrollBarEnabled(false);
        this.searchGridView.setVerticalScrollBarEnabled(false);
        this.searchGridView.setOnScrollListener(new RecyclerView.OnScrollListener() { // from class: org.telegram.ui.Components.ShareAlert.15
            {
                ShareAlert.this = this;
            }

            @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int i5, int i6) {
                if (i6 != 0) {
                    ShareAlert.this.updateLayout();
                    ShareAlert shareAlert = ShareAlert.this;
                    shareAlert.previousScrollOffsetY = shareAlert.scrollOffsetY;
                }
            }
        });
        this.searchGridView.addItemDecoration(new RecyclerView.ItemDecoration(this) { // from class: org.telegram.ui.Components.ShareAlert.16
            @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
            public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.State state) {
                RecyclerListView.Holder holder = (RecyclerListView.Holder) recyclerView.getChildViewHolder(view);
                if (holder != null) {
                    int adapterPosition = holder.getAdapterPosition() % 4;
                    rect.left = adapterPosition == 0 ? 0 : AndroidUtilities.m104dp(4);
                    rect.right = adapterPosition != 3 ? AndroidUtilities.m104dp(4) : 0;
                    return;
                }
                rect.left = AndroidUtilities.m104dp(4);
                rect.right = AndroidUtilities.m104dp(4);
            }
        });
        this.searchGridView.setAdapter(this.searchAdapter);
        this.searchGridView.setGlowColor(getThemedColor(this.darkTheme ? Theme.key_voipgroup_inviteMembersBackground : Theme.key_dialogScrollGlow));
        this.recyclerItemsEnterAnimator = new RecyclerItemsEnterAnimator(this.searchGridView, true);
        FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context, resourcesProvider);
        flickerLoadingView.setViewType(12);
        if (this.darkTheme) {
            flickerLoadingView.setColors(Theme.key_voipgroup_inviteMembersBackground, Theme.key_voipgroup_searchBackground, -1);
        }
        StickerEmptyView stickerEmptyView = new StickerEmptyView(context, flickerLoadingView, 1, resourcesProvider);
        this.searchEmptyView = stickerEmptyView;
        stickerEmptyView.addView(flickerLoadingView, 0);
        this.searchEmptyView.setAnimateLayoutChange(true);
        this.searchEmptyView.showProgress(false, false);
        if (this.darkTheme) {
            this.searchEmptyView.title.setTextColor(getThemedColor(Theme.key_voipgroup_nameText));
        }
        this.searchEmptyView.title.setText(LocaleController.getString("NoResult", C3632R.string.NoResult));
        this.searchGridView.setEmptyView(this.searchEmptyView);
        this.searchGridView.setHideIfEmpty(false);
        this.searchGridView.setAnimateEmptyView(true, 0);
        this.containerView.addView(this.searchEmptyView, LayoutHelper.createFrame(-1, -1, 51, 0, 52, 0, 0));
        this.containerView.addView(this.searchGridView, LayoutHelper.createFrame(-1, -1, 51, 0, 0, 0, 0));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, AndroidUtilities.getShadowHeight(), 51);
        layoutParams.topMargin = AndroidUtilities.m104dp((!this.darkTheme || this.linkToCopy[1] == null) ? 58 : 111);
        this.shadow[0] = new View(context);
        View view = this.shadow[0];
        int i5 = Theme.key_dialogShadowLine;
        view.setBackgroundColor(getThemedColor(i5));
        this.shadow[0].setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.shadow[0].setTag(1);
        this.containerView.addView(this.shadow[0], layoutParams);
        this.containerView.addView(this.frameLayout, LayoutHelper.createFrame(-1, (!this.darkTheme || this.linkToCopy[1] == null) ? 58 : 111, 51));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, AndroidUtilities.getShadowHeight(), 83);
        layoutParams2.bottomMargin = AndroidUtilities.m104dp(48);
        this.shadow[1] = new View(context);
        this.shadow[1].setBackgroundColor(getThemedColor(i5));
        this.containerView.addView(this.shadow[1], layoutParams2);
        if (this.isChannel || this.linkToCopy[0] != null) {
            TextView textView = new TextView(context);
            this.pickerBottomLayout = textView;
            textView.setBackgroundDrawable(Theme.createSelectorWithBackgroundDrawable(getThemedColor(this.darkTheme ? Theme.key_voipgroup_inviteMembersBackground : Theme.key_dialogBackground), getThemedColor(this.darkTheme ? Theme.key_voipgroup_listSelector : Theme.key_listSelector)));
            this.pickerBottomLayout.setTextColor(getThemedColor(this.darkTheme ? Theme.key_voipgroup_listeningText : Theme.key_dialogTextBlue2));
            this.pickerBottomLayout.setTextSize(1, 14.0f);
            this.pickerBottomLayout.setPadding(AndroidUtilities.m104dp(18), 0, AndroidUtilities.m104dp(18), 0);
            this.pickerBottomLayout.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.pickerBottomLayout.setGravity(17);
            if (this.darkTheme && this.linkToCopy[1] != null) {
                this.pickerBottomLayout.setText(LocaleController.getString("VoipGroupCopySpeakerLink", C3632R.string.VoipGroupCopySpeakerLink).toUpperCase());
            } else {
                this.pickerBottomLayout.setText(LocaleController.getString("CopyLink", C3632R.string.CopyLink).toUpperCase());
            }
            this.pickerBottomLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ShareAlert.this.lambda$new$8(view2);
                }
            });
            this.containerView.addView(this.pickerBottomLayout, LayoutHelper.createFrame(-1, 48, 83));
            ChatActivity chatActivity2 = this.parentFragment;
            if (chatActivity2 != null && ChatObject.hasAdminRights(chatActivity2.getCurrentChat()) && this.sendingMessageObjects.size() > 0 && this.sendingMessageObjects.get(0).messageOwner.forwards > 0) {
                final MessageObject messageObject2 = this.sendingMessageObjects.get(0);
                if (!messageObject2.isForwarded()) {
                    LinearLayout linearLayout = new LinearLayout(context);
                    this.sharesCountLayout = linearLayout;
                    linearLayout.setOrientation(0);
                    this.sharesCountLayout.setGravity(16);
                    this.sharesCountLayout.setBackgroundDrawable(Theme.createSelectorDrawable(getThemedColor(this.darkTheme ? Theme.key_voipgroup_listSelector : Theme.key_listSelector), 2));
                    this.containerView.addView(this.sharesCountLayout, LayoutHelper.createFrame(-2, 48, 85, 6, 0, -6, 0));
                    this.sharesCountLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda6
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view2) {
                            ShareAlert.this.lambda$new$9(messageObject2, view2);
                        }
                    });
                    ImageView imageView = new ImageView(context);
                    imageView.setImageResource(C3632R.C3634drawable.share_arrow);
                    imageView.setColorFilter(new PorterDuffColorFilter(getThemedColor(this.darkTheme ? Theme.key_voipgroup_listeningText : Theme.key_dialogTextBlue2), PorterDuff.Mode.MULTIPLY));
                    this.sharesCountLayout.addView(imageView, LayoutHelper.createLinear(-2, -1, 16, 20, 0, 0, 0));
                    TextView textView2 = new TextView(context);
                    textView2.setText(String.format("%d", Integer.valueOf(messageObject2.messageOwner.forwards)));
                    textView2.setTextSize(1, 14.0f);
                    textView2.setTextColor(getThemedColor(this.darkTheme ? Theme.key_voipgroup_listeningText : Theme.key_dialogTextBlue2));
                    textView2.setGravity(16);
                    textView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                    this.sharesCountLayout.addView(textView2, LayoutHelper.createLinear(-2, -1, 16, 8, 0, 20, 0));
                }
            }
        } else {
            this.shadow[1].setAlpha(BitmapDescriptorFactory.HUE_RED);
        }
        C557817 c557817 = new C557817(context);
        this.frameLayout2 = c557817;
        c557817.setWillNotDraw(false);
        this.frameLayout2.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.frameLayout2.setVisibility(4);
        this.containerView.addView(this.frameLayout2, LayoutHelper.createFrame(-1, -2, 83));
        this.frameLayout2.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda8
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                boolean lambda$new$10;
                lambda$new$10 = ShareAlert.lambda$new$10(view2, motionEvent);
                return lambda$new$10;
            }
        });
        C557918 c557918 = new C557918(context, this.sizeNotifierFrameLayout, null, 1, true, resourcesProvider);
        this.commentTextView = c557918;
        if (this.darkTheme) {
            EditTextCaption editText = c557918.getEditText();
            int i6 = Theme.key_voipgroup_nameText;
            editText.setTextColor(getThemedColor(i6));
            this.commentTextView.getEditText().setCursorColor(getThemedColor(i6));
        }
        this.commentTextView.setBackgroundColor(themedColor);
        this.commentTextView.setHint(LocaleController.getString("ShareComment", C3632R.string.ShareComment));
        this.commentTextView.onResume();
        this.commentTextView.setPadding(0, 0, AndroidUtilities.m104dp(84), 0);
        this.frameLayout2.addView(this.commentTextView, LayoutHelper.createFrame(-1, -2, 51));
        this.frameLayout2.setClipChildren(false);
        this.frameLayout2.setClipToPadding(false);
        this.commentTextView.setClipChildren(false);
        FrameLayout frameLayout2 = new FrameLayout(context) { // from class: org.telegram.ui.Components.ShareAlert.19
            {
                ShareAlert.this = this;
            }

            @Override // android.view.View
            public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
                super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
                accessibilityNodeInfo.setText(LocaleController.formatPluralString("AccDescrShareInChats", ShareAlert.this.selectedDialogs.size(), new Object[0]));
                accessibilityNodeInfo.setClassName(Button.class.getName());
                accessibilityNodeInfo.setLongClickable(true);
                accessibilityNodeInfo.setClickable(true);
            }
        };
        this.writeButtonContainer = frameLayout2;
        frameLayout2.setFocusable(true);
        this.writeButtonContainer.setFocusableInTouchMode(true);
        this.writeButtonContainer.setVisibility(4);
        this.writeButtonContainer.setScaleX(0.2f);
        this.writeButtonContainer.setScaleY(0.2f);
        this.writeButtonContainer.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.containerView.addView(this.writeButtonContainer, LayoutHelper.createFrame(60, 60, 85, 0, 0, 6, 10));
        final ImageView imageView2 = new ImageView(context);
        int m104dp = AndroidUtilities.m104dp(56);
        int i7 = Theme.key_dialogFloatingButton;
        int themedColor2 = getThemedColor(i7);
        int i8 = Build.VERSION.SDK_INT;
        Drawable createSimpleSelectorCircleDrawable = Theme.createSimpleSelectorCircleDrawable(m104dp, themedColor2, getThemedColor(i8 >= 21 ? Theme.key_dialogFloatingButtonPressed : i7));
        if (i8 < 21) {
            Drawable mutate = context.getResources().getDrawable(C3632R.C3634drawable.floating_shadow_profile).mutate();
            mutate.setColorFilter(new PorterDuffColorFilter(-16777216, PorterDuff.Mode.MULTIPLY));
            CombinedDrawable combinedDrawable = new CombinedDrawable(mutate, createSimpleSelectorCircleDrawable, 0, 0);
            combinedDrawable.setIconSize(AndroidUtilities.m104dp(56), AndroidUtilities.m104dp(56));
            createSimpleSelectorCircleDrawable = combinedDrawable;
        }
        imageView2.setBackgroundDrawable(createSimpleSelectorCircleDrawable);
        imageView2.setImageResource(C3632R.C3634drawable.attach_send);
        imageView2.setImportantForAccessibility(2);
        int i9 = Theme.key_dialogFloatingIcon;
        imageView2.setColorFilter(new PorterDuffColorFilter(getThemedColor(i9), PorterDuff.Mode.MULTIPLY));
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        if (i8 >= 21) {
            imageView2.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.Components.ShareAlert.20
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view2, Outline outline) {
                    outline.setOval(0, 0, AndroidUtilities.m104dp(56), AndroidUtilities.m104dp(56));
                }
            });
        }
        this.writeButtonContainer.addView(imageView2, LayoutHelper.createFrame(i8 >= 21 ? 56 : 60, i8 < 21 ? 60 : 56, 51, i8 >= 21 ? 2 : 0, 0, 0, 0));
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda2
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ShareAlert.this.lambda$new$11(view2);
            }
        });
        imageView2.setOnLongClickListener(new View.OnLongClickListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda7
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view2) {
                boolean lambda$new$12;
                lambda$new$12 = ShareAlert.this.lambda$new$12(imageView2, view2);
                return lambda$new$12;
            }
        });
        if (this.sendingMessageObjects != null) {
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.writeButtonContainer.getLayoutParams();
            FrameLayout.LayoutParams layoutParams4 = (FrameLayout.LayoutParams) this.commentTextView.getLayoutParams();
            int i10 = layoutParams4.rightMargin;
            int i11 = layoutParams3.width;
            int i12 = ((FrameLayout.LayoutParams) imageView2.getLayoutParams()).width;
            final int i13 = (int) (i12 * 0.75f);
            int i14 = layoutParams3.bottomMargin + (i11 - i12) + ((i12 - i13) / 2);
            layoutParams4.setMarginEnd(i10 + i13);
            ImageView imageView3 = new ImageView(context);
            this.forwardingOptionsButton = imageView3;
            imageView3.setVisibility(4);
            this.forwardingOptionsButton.setScaleX(0.2f);
            this.forwardingOptionsButton.setScaleY(0.2f);
            this.forwardingOptionsButton.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.forwardingOptionsButton.setBackground(Theme.createSimpleSelectorCircleDrawable(i13, getThemedColor(i7), getThemedColor(Theme.key_dialogFloatingButtonPressed)));
            this.forwardingOptionsButton.setOutlineProvider(new ViewOutlineProvider(this) { // from class: org.telegram.ui.Components.ShareAlert.21
                @Override // android.view.ViewOutlineProvider
                public void getOutline(View view2, Outline outline) {
                    int i15 = i13;
                    outline.setOval(0, 0, i15, i15);
                }
            });
            this.forwardingOptionsButton.setImageResource(C3632R.C3634drawable.fork_settings_filled);
            this.forwardingOptionsButton.setColorFilter(new PorterDuffColorFilter(Theme.getColor(i9), PorterDuff.Mode.MULTIPLY));
            this.forwardingOptionsButton.setScaleType(ImageView.ScaleType.CENTER);
            this.forwardingOptionsButton.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    ShareAlert.this.lambda$new$13(view2);
                }
            });
            FrameLayout.LayoutParams layoutParams5 = new FrameLayout.LayoutParams(i13, i13, 85);
            layoutParams5.setMargins(0, 0, (layoutParams3.rightMargin * 2) + i11, i14);
            this.containerView.addView(this.forwardingOptionsButton, layoutParams5);
        }
        this.textPaint.setTextSize(AndroidUtilities.m104dp(12));
        this.textPaint.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        View view2 = new View(context) { // from class: org.telegram.ui.Components.ShareAlert.22
            {
                ShareAlert.this = this;
            }

            @Override // android.view.View
            protected void onDraw(Canvas canvas) {
                String format = String.format("%d", Integer.valueOf(Math.max(1, ShareAlert.this.selectedDialogs.size())));
                int ceil = (int) Math.ceil(ShareAlert.this.textPaint.measureText(format));
                int max = Math.max(AndroidUtilities.m104dp(16) + ceil, AndroidUtilities.m104dp(24));
                int measuredWidth = getMeasuredWidth() / 2;
                int measuredHeight = getMeasuredHeight() / 2;
                ShareAlert.this.textPaint.setColor(ShareAlert.this.getThemedColor(Theme.key_dialogRoundCheckBoxCheck));
                Paint paint = ShareAlert.this.paint;
                ShareAlert shareAlert = ShareAlert.this;
                paint.setColor(shareAlert.getThemedColor(shareAlert.darkTheme ? Theme.key_voipgroup_inviteMembersBackground : Theme.key_dialogBackground));
                int i15 = max / 2;
                int i16 = measuredWidth - i15;
                int i17 = i15 + measuredWidth;
                ShareAlert.this.rect.set(i16, BitmapDescriptorFactory.HUE_RED, i17, getMeasuredHeight());
                canvas.drawRoundRect(ShareAlert.this.rect, AndroidUtilities.m104dp(12), AndroidUtilities.m104dp(12), ShareAlert.this.paint);
                ShareAlert.this.paint.setColor(ShareAlert.this.getThemedColor(Theme.key_dialogRoundCheckBox));
                ShareAlert.this.rect.set(i16 + AndroidUtilities.m104dp(2), AndroidUtilities.m104dp(2), i17 - AndroidUtilities.m104dp(2), getMeasuredHeight() - AndroidUtilities.m104dp(2));
                canvas.drawRoundRect(ShareAlert.this.rect, AndroidUtilities.m104dp(10), AndroidUtilities.m104dp(10), ShareAlert.this.paint);
                canvas.drawText(format, measuredWidth - (ceil / 2), AndroidUtilities.m105dp(16.2f), ShareAlert.this.textPaint);
            }
        };
        this.selectedCountView = view2;
        view2.setAlpha(BitmapDescriptorFactory.HUE_RED);
        this.selectedCountView.setScaleX(0.2f);
        this.selectedCountView.setScaleY(0.2f);
        this.containerView.addView(this.selectedCountView, LayoutHelper.createFrame(42, 24, 85, 0, 0, -8, 9));
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.blurredView = frameLayout3;
        frameLayout3.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda3
            @Override // android.view.View.OnClickListener
            public final void onClick(View view3) {
                ShareAlert.this.lambda$new$14(view3);
            }
        });
        frameLayout3.setVisibility(8);
        getContainer().addView(frameLayout3);
        updateSelectedCount(0);
        DialogsActivity.loadDialogs(AccountInstance.getInstance(this.currentAccount));
        if (this.listAdapter.dialogs.isEmpty()) {
            NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.dialogsNeedReload);
        }
        DialogsSearchAdapter.loadRecentSearch(this.currentAccount, 0, new DialogsSearchAdapter.OnRecentSearchLoaded() { // from class: org.telegram.ui.Components.ShareAlert.23
            {
                ShareAlert.this = this;
            }

            @Override // org.telegram.p043ui.Adapters.DialogsSearchAdapter.OnRecentSearchLoaded
            public void setRecentSearch(ArrayList<DialogsSearchAdapter.RecentSearchObject> arrayList3, LongSparseArray<DialogsSearchAdapter.RecentSearchObject> longSparseArray) {
                ShareAlert.this.recentSearchObjects = arrayList3;
                ShareAlert.this.recentSearchObjectsById = longSparseArray;
                for (int i15 = 0; i15 < ShareAlert.this.recentSearchObjects.size(); i15++) {
                    DialogsSearchAdapter.RecentSearchObject recentSearchObject = (DialogsSearchAdapter.RecentSearchObject) ShareAlert.this.recentSearchObjects.get(i15);
                    TLObject tLObject = recentSearchObject.object;
                    if (tLObject instanceof TLRPC$User) {
                        MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).putUser((TLRPC$User) recentSearchObject.object, true);
                    } else if (tLObject instanceof TLRPC$Chat) {
                        MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).putChat((TLRPC$Chat) recentSearchObject.object, true);
                    } else if (tLObject instanceof TLRPC$EncryptedChat) {
                        MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).putEncryptedChat((TLRPC$EncryptedChat) recentSearchObject.object, true);
                    }
                }
                ShareAlert.this.searchAdapter.notifyDataSetChanged();
            }
        });
        MediaDataController.getInstance(this.currentAccount).loadHints(true);
        AndroidUtilities.updateViewVisibilityAnimated(this.gridView, true, 1.0f, false);
        AndroidUtilities.updateViewVisibilityAnimated(this.searchGridView, false, 1.0f, false);
    }

    public /* synthetic */ void lambda$new$1(final Context context, final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda13
            @Override // java.lang.Runnable
            public final void run() {
                ShareAlert.this.lambda$new$0(tLObject, context);
            }
        });
    }

    public /* synthetic */ void lambda$new$0(TLObject tLObject, Context context) {
        if (tLObject != null) {
            this.exportedMessageLink = (TLRPC$TL_exportedMessageLink) tLObject;
            if (this.copyLinkOnEnd) {
                copyLink(context);
            }
        }
        this.loadingLink = false;
    }

    public static /* synthetic */ Integer lambda$new$2(Integer num) {
        return 0;
    }

    public /* synthetic */ void lambda$new$3(View view, int i) {
        TLRPC$Dialog tLRPC$Dialog;
        TLRPC$TL_forumTopic item = this.shareTopicsAdapter.getItem(i);
        if (item == null || (tLRPC$Dialog = this.selectedTopicDialog) == null) {
            return;
        }
        this.selectedDialogs.put(tLRPC$Dialog.f1608id, tLRPC$Dialog);
        this.selectedDialogTopics.put(tLRPC$Dialog, item);
        updateSelectedCount(2);
        if (this.searchIsVisible || this.searchWasVisibleBeforeTopics) {
            if (((TLRPC$Dialog) this.listAdapter.dialogsMap.get(tLRPC$Dialog.f1608id)) == null) {
                this.listAdapter.dialogsMap.put(tLRPC$Dialog.f1608id, tLRPC$Dialog);
                this.listAdapter.dialogs.add(!this.listAdapter.dialogs.isEmpty(), tLRPC$Dialog);
            }
            this.listAdapter.notifyDataSetChanged();
            this.updateSearchAdapter = false;
            this.searchView.searchEditText.setText("");
            checkCurrentList(false);
        }
        for (int i2 = 0; i2 < getMainGridView().getChildCount(); i2++) {
            View childAt = getMainGridView().getChildAt(i2);
            if (childAt instanceof ShareDialogCell) {
                ShareDialogCell shareDialogCell = (ShareDialogCell) childAt;
                if (shareDialogCell.getCurrentDialog() == this.selectedTopicDialog.f1608id && shareDialogCell != null) {
                    shareDialogCell.setTopic(item, true);
                    shareDialogCell.setChecked(true, true);
                }
            }
        }
        collapseTopics();
    }

    public static /* synthetic */ Integer lambda$new$4(Integer num) {
        return 0;
    }

    public /* synthetic */ void lambda$new$5(View view, int i) {
        TLRPC$Dialog item;
        if (i >= 0 && (item = this.listAdapter.getItem(i)) != null) {
            selectDialog((ShareDialogCell) view, item);
        }
    }

    public static /* synthetic */ Integer lambda$new$6(Integer num) {
        return 0;
    }

    public /* synthetic */ void lambda$new$7(View view, int i) {
        TLRPC$Dialog item;
        if (i >= 0 && (item = this.searchAdapter.getItem(i)) != null) {
            selectDialog((ShareDialogCell) view, item);
        }
    }

    public /* synthetic */ void lambda$new$8(View view) {
        if (this.selectedDialogs.size() == 0) {
            if (this.isChannel || this.linkToCopy[0] != null) {
                dismiss();
                if (this.linkToCopy[0] == null && this.loadingLink) {
                    this.copyLinkOnEnd = true;
                    Toast.makeText(getContext(), LocaleController.getString("Loading", C3632R.string.Loading), 0).show();
                    return;
                }
                copyLink(getContext());
            }
        }
    }

    public /* synthetic */ void lambda$new$9(MessageObject messageObject, View view) {
        this.parentFragment.presentFragment(new MessageStatisticActivity(messageObject));
    }

    /* renamed from: org.telegram.ui.Components.ShareAlert$17 */
    /* loaded from: classes6.dex */
    public class C557817 extends FrameLayout {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C557817(Context context) {
            super(context);
            ShareAlert.this = r1;
            new Paint();
        }

        @Override // android.view.View
        public void setVisibility(int i) {
            super.setVisibility(i);
            if (i != 0) {
                ShareAlert.this.shadow[1].setTranslationY(BitmapDescriptorFactory.HUE_RED);
            }
        }

        @Override // android.view.View
        public void setAlpha(float f) {
            super.setAlpha(f);
            invalidate();
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            if (ShareAlert.this.chatActivityEnterViewAnimateFromTop != BitmapDescriptorFactory.HUE_RED && ShareAlert.this.chatActivityEnterViewAnimateFromTop != ShareAlert.this.frameLayout2.getTop() + ShareAlert.this.chatActivityEnterViewAnimateFromTop) {
                if (ShareAlert.this.topBackgroundAnimator != null) {
                    ShareAlert.this.topBackgroundAnimator.cancel();
                }
                ShareAlert shareAlert = ShareAlert.this;
                shareAlert.captionEditTextTopOffset = shareAlert.chatActivityEnterViewAnimateFromTop - (ShareAlert.this.frameLayout2.getTop() + ShareAlert.this.captionEditTextTopOffset);
                ShareAlert shareAlert2 = ShareAlert.this;
                shareAlert2.topBackgroundAnimator = ValueAnimator.ofFloat(shareAlert2.captionEditTextTopOffset, BitmapDescriptorFactory.HUE_RED);
                ShareAlert.this.topBackgroundAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ShareAlert$17$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ShareAlert.C557817.this.lambda$onDraw$0(valueAnimator);
                    }
                });
                ShareAlert.this.topBackgroundAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
                ShareAlert.this.topBackgroundAnimator.setDuration(200L);
                ShareAlert.this.topBackgroundAnimator.start();
                ShareAlert.this.chatActivityEnterViewAnimateFromTop = BitmapDescriptorFactory.HUE_RED;
            }
            ShareAlert.this.shadow[1].setTranslationY((-(ShareAlert.this.frameLayout2.getMeasuredHeight() - AndroidUtilities.m104dp(48))) + ShareAlert.this.captionEditTextTopOffset + ShareAlert.this.currentPanTranslationY + ((ShareAlert.this.frameLayout2.getMeasuredHeight() - AndroidUtilities.m104dp(48)) * (1.0f - getAlpha())));
        }

        public /* synthetic */ void lambda$onDraw$0(ValueAnimator valueAnimator) {
            ShareAlert.this.captionEditTextTopOffset = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            ShareAlert.this.frameLayout2.invalidate();
            invalidate();
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            canvas.save();
            canvas.clipRect(BitmapDescriptorFactory.HUE_RED, ShareAlert.this.captionEditTextTopOffset, getMeasuredWidth(), getMeasuredHeight());
            super.dispatchDraw(canvas);
            canvas.restore();
        }
    }

    /* renamed from: org.telegram.ui.Components.ShareAlert$18 */
    /* loaded from: classes6.dex */
    public class C557918 extends EditTextEmoji {
        private ValueAnimator messageEditTextAnimator;
        private int messageEditTextPredrawHeigth;
        private int messageEditTextPredrawScrollY;
        private boolean shouldAnimateEditTextWithBounds;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C557918(Context context, SizeNotifierFrameLayout sizeNotifierFrameLayout, BaseFragment baseFragment, int i, boolean z, Theme.ResourcesProvider resourcesProvider) {
            super(context, sizeNotifierFrameLayout, baseFragment, i, z, resourcesProvider);
            ShareAlert.this = r8;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            if (this.shouldAnimateEditTextWithBounds) {
                final EditTextCaption editText = ShareAlert.this.commentTextView.getEditText();
                editText.setOffsetY(editText.getOffsetY() - ((this.messageEditTextPredrawHeigth - editText.getMeasuredHeight()) + (this.messageEditTextPredrawScrollY - editText.getScrollY())));
                ValueAnimator ofFloat = ValueAnimator.ofFloat(editText.getOffsetY(), BitmapDescriptorFactory.HUE_RED);
                ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.Components.ShareAlert$18$$ExternalSyntheticLambda0
                    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                    public final void onAnimationUpdate(ValueAnimator valueAnimator) {
                        ShareAlert.C557918.lambda$dispatchDraw$0(EditTextCaption.this, valueAnimator);
                    }
                });
                ValueAnimator valueAnimator = this.messageEditTextAnimator;
                if (valueAnimator != null) {
                    valueAnimator.cancel();
                }
                this.messageEditTextAnimator = ofFloat;
                ofFloat.setDuration(200L);
                ofFloat.setInterpolator(CubicBezierInterpolator.DEFAULT);
                ofFloat.start();
                this.shouldAnimateEditTextWithBounds = false;
            }
            super.dispatchDraw(canvas);
        }

        public static /* synthetic */ void lambda$dispatchDraw$0(EditTextCaption editTextCaption, ValueAnimator valueAnimator) {
            editTextCaption.setOffsetY(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }

        @Override // org.telegram.p043ui.Components.EditTextEmoji
        protected void onLineCountChanged(int i, int i2) {
            if (!TextUtils.isEmpty(getEditText().getText())) {
                this.shouldAnimateEditTextWithBounds = true;
                this.messageEditTextPredrawHeigth = getEditText().getMeasuredHeight();
                this.messageEditTextPredrawScrollY = getEditText().getScrollY();
                invalidate();
            } else {
                getEditText().animate().cancel();
                getEditText().setOffsetY(BitmapDescriptorFactory.HUE_RED);
                this.shouldAnimateEditTextWithBounds = false;
            }
            ShareAlert shareAlert = ShareAlert.this;
            shareAlert.chatActivityEnterViewAnimateFromTop = shareAlert.frameLayout2.getTop() + ShareAlert.this.captionEditTextTopOffset;
            ShareAlert.this.frameLayout2.invalidate();
        }

        @Override // org.telegram.p043ui.Components.EditTextEmoji
        public void showPopup(int i) {
            super.showPopup(i);
            if (ShareAlert.this.darkTheme) {
                ((BottomSheet) ShareAlert.this).navBarColorKey = -1;
                AndroidUtilities.setNavigationBarColor(ShareAlert.this.getWindow(), ShareAlert.this.getThemedColor(Theme.key_windowBackgroundGray), true, new AndroidUtilities.IntColorCallback() { // from class: org.telegram.ui.Components.ShareAlert$18$$ExternalSyntheticLambda1
                    @Override // org.telegram.messenger.AndroidUtilities.IntColorCallback
                    public final void run(int i2) {
                        ShareAlert.C557918.this.lambda$showPopup$1(i2);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$showPopup$1(int i) {
            ShareAlert shareAlert = ShareAlert.this;
            shareAlert.setOverlayNavBarColor(((BottomSheet) shareAlert).navBarColor = i);
        }

        @Override // org.telegram.p043ui.Components.EditTextEmoji
        public void hidePopup(boolean z) {
            super.hidePopup(z);
            if (ShareAlert.this.darkTheme) {
                ((BottomSheet) ShareAlert.this).navBarColorKey = -1;
                AndroidUtilities.setNavigationBarColor(ShareAlert.this.getWindow(), ShareAlert.this.getThemedColor(Theme.key_voipgroup_inviteMembersBackground), true, new AndroidUtilities.IntColorCallback() { // from class: org.telegram.ui.Components.ShareAlert$18$$ExternalSyntheticLambda2
                    @Override // org.telegram.messenger.AndroidUtilities.IntColorCallback
                    public final void run(int i) {
                        ShareAlert.C557918.this.lambda$hidePopup$2(i);
                    }
                });
            }
        }

        public /* synthetic */ void lambda$hidePopup$2(int i) {
            ShareAlert shareAlert = ShareAlert.this;
            shareAlert.setOverlayNavBarColor(((BottomSheet) shareAlert).navBarColor = i);
        }
    }

    public /* synthetic */ void lambda$new$11(View view) {
        sendInternal(true);
    }

    public /* synthetic */ boolean lambda$new$12(ImageView imageView, View view) {
        return onSendLongClick(imageView);
    }

    public /* synthetic */ void lambda$new$13(View view) {
        openForwardingPreview();
    }

    public /* synthetic */ void lambda$new$14(View view) {
        MessagePreviewView messagePreviewView = this.forwardingPreviewView;
        if (messagePreviewView == null || !messagePreviewView.isShowing()) {
            return;
        }
        this.forwardingPreviewView.dismiss(false);
    }

    public void selectDialog(ShareDialogCell shareDialogCell, final TLRPC$Dialog tLRPC$Dialog) {
        DialogsSearchAdapter.CategoryAdapterRecycler categoryAdapterRecycler;
        if (this.topicsGridView.getVisibility() != 8 || this.parentActivity == null) {
            return;
        }
        if (DialogObject.isChatDialog(tLRPC$Dialog.f1608id)) {
            TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-tLRPC$Dialog.f1608id));
            if (ChatObject.isChannel(chat) && !chat.megagroup && (!ChatObject.isCanWriteToChannel(-tLRPC$Dialog.f1608id, this.currentAccount) || this.hasPoll == 2)) {
                AlertDialog.Builder builder = new AlertDialog.Builder(this.parentActivity);
                builder.setTitle(LocaleController.getString("SendMessageTitle", C3632R.string.SendMessageTitle));
                if (this.hasPoll == 2) {
                    if (this.isChannel) {
                        builder.setMessage(LocaleController.getString("PublicPollCantForward", C3632R.string.PublicPollCantForward));
                    } else if (ChatObject.isActionBannedByDefault(chat, 10)) {
                        builder.setMessage(LocaleController.getString("ErrorSendRestrictedPollsAll", C3632R.string.ErrorSendRestrictedPollsAll));
                    } else {
                        builder.setMessage(LocaleController.getString("ErrorSendRestrictedPolls", C3632R.string.ErrorSendRestrictedPolls));
                    }
                } else {
                    builder.setMessage(LocaleController.getString("ChannelCantSendMessage", C3632R.string.ChannelCantSendMessage));
                }
                builder.setNegativeButton(LocaleController.getString("OK", C3632R.string.OK), null);
                builder.show();
                return;
            }
        } else if (DialogObject.isEncryptedDialog(tLRPC$Dialog.f1608id) && this.hasPoll != 0) {
            AlertDialog.Builder builder2 = new AlertDialog.Builder(this.parentActivity);
            builder2.setTitle(LocaleController.getString("SendMessageTitle", C3632R.string.SendMessageTitle));
            if (this.hasPoll != 0) {
                builder2.setMessage(LocaleController.getString("PollCantForwardSecretChat", C3632R.string.PollCantForwardSecretChat));
            } else {
                builder2.setMessage(LocaleController.getString("InvoiceCantForwardSecretChat", C3632R.string.InvoiceCantForwardSecretChat));
            }
            builder2.setNegativeButton(LocaleController.getString("OK", C3632R.string.OK), null);
            builder2.show();
            return;
        }
        if (this.selectedDialogs.indexOfKey(tLRPC$Dialog.f1608id) >= 0) {
            this.selectedDialogs.remove(tLRPC$Dialog.f1608id);
            this.selectedDialogTopics.remove(tLRPC$Dialog);
            if (shareDialogCell != null) {
                shareDialogCell.setChecked(false, true);
            }
            updateSelectedCount(1);
        } else if (DialogObject.isChatDialog(tLRPC$Dialog.f1608id) && MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-tLRPC$Dialog.f1608id)) != null && MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-tLRPC$Dialog.f1608id)).forum) {
            this.selectedTopicDialog = tLRPC$Dialog;
            this.topicsLayoutManager.scrollToPositionWithOffset(0, this.scrollOffsetY - this.topicsGridView.getPaddingTop());
            final AtomicReference atomicReference = new AtomicReference();
            final C558624 c558624 = new C558624(tLRPC$Dialog, atomicReference, shareDialogCell);
            atomicReference.set(new Runnable() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda12
                @Override // java.lang.Runnable
                public final void run() {
                    ShareAlert.this.lambda$selectDialog$15(atomicReference, c558624, tLRPC$Dialog);
                }
            });
            NotificationCenter.getInstance(this.currentAccount).addObserver(c558624, NotificationCenter.topicsDidLoaded);
            if (MessagesController.getInstance(this.currentAccount).getTopicsController().getTopics(-tLRPC$Dialog.f1608id) != null) {
                c558624.didReceivedNotification(NotificationCenter.topicsDidLoaded, this.currentAccount, Long.valueOf(-tLRPC$Dialog.f1608id));
                return;
            }
            MessagesController.getInstance(this.currentAccount).getTopicsController().loadTopics(-tLRPC$Dialog.f1608id);
            AndroidUtilities.runOnUIThread((Runnable) atomicReference.get(), 300L);
            return;
        } else {
            this.selectedDialogs.put(tLRPC$Dialog.f1608id, tLRPC$Dialog);
            if (shareDialogCell != null) {
                shareDialogCell.setChecked(true, true);
            }
            updateSelectedCount(2);
            long j = UserConfig.getInstance(this.currentAccount).clientUserId;
            if (this.searchIsVisible) {
                TLRPC$Dialog tLRPC$Dialog2 = (TLRPC$Dialog) this.listAdapter.dialogsMap.get(tLRPC$Dialog.f1608id);
                if (tLRPC$Dialog2 != null) {
                    if (tLRPC$Dialog2.f1608id != j) {
                        this.listAdapter.dialogs.remove(tLRPC$Dialog2);
                        this.listAdapter.dialogs.add(!this.listAdapter.dialogs.isEmpty(), tLRPC$Dialog2);
                    }
                } else {
                    this.listAdapter.dialogsMap.put(tLRPC$Dialog.f1608id, tLRPC$Dialog);
                    this.listAdapter.dialogs.add(!this.listAdapter.dialogs.isEmpty(), tLRPC$Dialog);
                }
                this.listAdapter.notifyDataSetChanged();
                this.updateSearchAdapter = false;
                this.searchView.searchEditText.setText("");
                checkCurrentList(false);
                this.searchView.hideKeyboard();
            }
        }
        ShareSearchAdapter shareSearchAdapter = this.searchAdapter;
        if (shareSearchAdapter == null || (categoryAdapterRecycler = shareSearchAdapter.categoryAdapter) == null) {
            return;
        }
        categoryAdapterRecycler.notifyItemRangeChanged(0, categoryAdapterRecycler.getItemCount());
    }

    /* renamed from: org.telegram.ui.Components.ShareAlert$24 */
    /* loaded from: classes6.dex */
    public class C558624 implements NotificationCenter.NotificationCenterDelegate {
        final /* synthetic */ ShareDialogCell val$cell;
        final /* synthetic */ TLRPC$Dialog val$dialog;
        final /* synthetic */ AtomicReference val$timeoutRef;

        C558624(TLRPC$Dialog tLRPC$Dialog, AtomicReference atomicReference, ShareDialogCell shareDialogCell) {
            ShareAlert.this = r1;
            this.val$dialog = tLRPC$Dialog;
            this.val$timeoutRef = atomicReference;
            this.val$cell = shareDialogCell;
        }

        @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
        public void didReceivedNotification(int i, int i2, Object... objArr) {
            if (((Long) objArr[0]).longValue() == (-this.val$dialog.f1608id)) {
                boolean z = (ShareAlert.this.shareTopicsAdapter.topics == null && MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).getTopicsController().getTopics(-this.val$dialog.f1608id) != null) || this.val$timeoutRef.get() == null;
                ShareAlert.this.shareTopicsAdapter.topics = MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).getTopicsController().getTopics(-this.val$dialog.f1608id);
                if (z) {
                    ShareAlert.this.shareTopicsAdapter.notifyDataSetChanged();
                }
                if (ShareAlert.this.shareTopicsAdapter.topics != null) {
                    NotificationCenter.getInstance(((BottomSheet) ShareAlert.this).currentAccount).removeObserver(this, NotificationCenter.topicsDidLoaded);
                }
                if (z) {
                    ShareAlert.this.topicsGridView.setVisibility(0);
                    ShareAlert.this.topicsGridView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    ShareAlert.this.topicsBackActionBar.setVisibility(0);
                    ShareAlert.this.topicsBackActionBar.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    ShareAlert shareAlert = ShareAlert.this;
                    shareAlert.topicsBackActionBar.setTitle(MessagesController.getInstance(((BottomSheet) shareAlert).currentAccount).getChat(Long.valueOf(-this.val$dialog.f1608id)).title);
                    ShareAlert.this.topicsBackActionBar.setSubtitle(LocaleController.getString(C3632R.string.SelectTopic));
                    ShareAlert shareAlert2 = ShareAlert.this;
                    shareAlert2.searchWasVisibleBeforeTopics = shareAlert2.searchIsVisible;
                    if (ShareAlert.this.topicsAnimation != null) {
                        ShareAlert.this.topicsAnimation.cancel();
                    }
                    final int[] iArr = new int[2];
                    ShareAlert.this.topicsAnimation = new SpringAnimation(new FloatValueHolder(BitmapDescriptorFactory.HUE_RED)).setSpring(new SpringForce(1000.0f).setStiffness((ShareAlert.this.parentFragment == null || !ShareAlert.this.parentFragment.shareAlertDebugTopicsSlowMotion) ? 800.0f : 10.0f).setDampingRatio(1.0f));
                    SpringAnimation springAnimation = ShareAlert.this.topicsAnimation;
                    final ShareDialogCell shareDialogCell = this.val$cell;
                    springAnimation.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.ShareAlert$24$$ExternalSyntheticLambda1
                        @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
                        public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                            ShareAlert.C558624.this.lambda$didReceivedNotification$0(shareDialogCell, iArr, dynamicAnimation, f, f2);
                        }
                    });
                    ShareAlert.this.topicsAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.ShareAlert$24$$ExternalSyntheticLambda0
                        @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
                        public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z2, float f, float f2) {
                            ShareAlert.C558624.this.lambda$didReceivedNotification$1(dynamicAnimation, z2, f, f2);
                        }
                    });
                    ShareAlert.this.topicsAnimation.start();
                    if (this.val$timeoutRef.get() != null) {
                        AndroidUtilities.cancelRunOnUIThread((Runnable) this.val$timeoutRef.get());
                        this.val$timeoutRef.set(null);
                    }
                }
            }
        }

        public /* synthetic */ void lambda$didReceivedNotification$0(ShareDialogCell shareDialogCell, int[] iArr, DynamicAnimation dynamicAnimation, float f, float f2) {
            ShareAlert.this.invalidateTopicsAnimation(shareDialogCell, iArr, f / 1000.0f);
        }

        public /* synthetic */ void lambda$didReceivedNotification$1(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
            ShareAlert.this.gridView.setVisibility(8);
            ShareAlert.this.searchGridView.setVisibility(8);
            ShareAlert.this.searchView.setVisibility(8);
            ShareAlert.this.topicsAnimation = null;
        }
    }

    public /* synthetic */ void lambda$selectDialog$15(AtomicReference atomicReference, NotificationCenter.NotificationCenterDelegate notificationCenterDelegate, TLRPC$Dialog tLRPC$Dialog) {
        atomicReference.set(null);
        notificationCenterDelegate.didReceivedNotification(NotificationCenter.topicsDidLoaded, this.currentAccount, Long.valueOf(-tLRPC$Dialog.f1608id));
    }

    private void collapseTopics() {
        TLRPC$Dialog tLRPC$Dialog = this.selectedTopicDialog;
        if (tLRPC$Dialog == null) {
            return;
        }
        final View view = null;
        this.selectedTopicDialog = null;
        for (int i = 0; i < getMainGridView().getChildCount(); i++) {
            View childAt = getMainGridView().getChildAt(i);
            if ((childAt instanceof ShareDialogCell) && ((ShareDialogCell) childAt).getCurrentDialog() == tLRPC$Dialog.f1608id) {
                view = childAt;
            }
        }
        if (view == null) {
            return;
        }
        SpringAnimation springAnimation = this.topicsAnimation;
        if (springAnimation != null) {
            springAnimation.cancel();
        }
        getMainGridView().setVisibility(0);
        this.searchView.setVisibility(0);
        if (this.searchIsVisible || this.searchWasVisibleBeforeTopics) {
            this.sizeNotifierFrameLayout.adjustPanLayoutHelper.ignoreOnce();
            this.searchView.searchEditText.requestFocus();
            AndroidUtilities.showKeyboard(this.searchView.searchEditText);
        }
        final int[] iArr = new int[2];
        SpringAnimation springAnimation2 = new SpringAnimation(new FloatValueHolder(1000.0f));
        SpringForce springForce = new SpringForce(BitmapDescriptorFactory.HUE_RED);
        ChatActivity chatActivity = this.parentFragment;
        SpringAnimation spring = springAnimation2.setSpring(springForce.setStiffness((chatActivity == null || !chatActivity.shareAlertDebugTopicsSlowMotion) ? 800.0f : 10.0f).setDampingRatio(1.0f));
        this.topicsAnimation = spring;
        spring.addUpdateListener(new DynamicAnimation.OnAnimationUpdateListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda11
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationUpdateListener
            public final void onAnimationUpdate(DynamicAnimation dynamicAnimation, float f, float f2) {
                ShareAlert.this.lambda$collapseTopics$16(view, iArr, dynamicAnimation, f, f2);
            }
        });
        this.topicsAnimation.addEndListener(new DynamicAnimation.OnAnimationEndListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda10
            @Override // androidx.dynamicanimation.animation.DynamicAnimation.OnAnimationEndListener
            public final void onAnimationEnd(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
                ShareAlert.this.lambda$collapseTopics$17(dynamicAnimation, z, f, f2);
            }
        });
        this.topicsAnimation.start();
    }

    public /* synthetic */ void lambda$collapseTopics$16(View view, int[] iArr, DynamicAnimation dynamicAnimation, float f, float f2) {
        invalidateTopicsAnimation(view, iArr, f / 1000.0f);
    }

    public /* synthetic */ void lambda$collapseTopics$17(DynamicAnimation dynamicAnimation, boolean z, float f, float f2) {
        this.topicsGridView.setVisibility(8);
        this.topicsBackActionBar.setVisibility(8);
        this.shareTopicsAdapter.topics = null;
        this.shareTopicsAdapter.notifyDataSetChanged();
        this.topicsAnimation = null;
        this.searchWasVisibleBeforeTopics = false;
    }

    public void invalidateTopicsAnimation(View view, int[] iArr, float f) {
        SearchField searchField;
        this.topicsGridView.setPivotX(view.getX() + (view.getWidth() / 2.0f));
        this.topicsGridView.setPivotY(view.getY() + (view.getHeight() / 2.0f));
        float f2 = 0.25f * f;
        float f3 = 0.75f + f2;
        this.topicsGridView.setScaleX(f3);
        this.topicsGridView.setScaleY(f3);
        this.topicsGridView.setAlpha(f);
        RecyclerListView mainGridView = getMainGridView();
        mainGridView.setPivotX(view.getX() + (view.getWidth() / 2.0f));
        mainGridView.setPivotY(view.getY() + (view.getHeight() / 2.0f));
        float f4 = f2 + 1.0f;
        mainGridView.setScaleX(f4);
        mainGridView.setScaleY(f4);
        float f5 = 1.0f - f;
        mainGridView.setAlpha(f5);
        this.searchView.setPivotX(searchField.getWidth() / 2.0f);
        this.searchView.setPivotY(BitmapDescriptorFactory.HUE_RED);
        float f6 = (0.1f * f5) + 0.9f;
        this.searchView.setScaleX(f6);
        this.searchView.setScaleY(f6);
        this.searchView.setAlpha(f5);
        this.topicsBackActionBar.getBackButton().setTranslationX((-AndroidUtilities.m104dp(16)) * f5);
        this.topicsBackActionBar.getTitleTextView().setTranslationY(AndroidUtilities.m104dp(16) * f5);
        this.topicsBackActionBar.getSubtitleTextView().setTranslationY(AndroidUtilities.m104dp(16) * f5);
        this.topicsBackActionBar.setAlpha(f);
        this.topicsGridView.getLocationInWindow(iArr);
        float interpolation = CubicBezierInterpolator.EASE_OUT.getInterpolation(f);
        for (int i = 0; i < mainGridView.getChildCount(); i++) {
            View childAt = mainGridView.getChildAt(i);
            if (childAt instanceof ShareDialogCell) {
                childAt.setTranslationX((childAt.getX() - view.getX()) * 0.5f * interpolation);
                childAt.setTranslationY((childAt.getY() - view.getY()) * 0.5f * interpolation);
                if (childAt != view) {
                    childAt.setAlpha(1.0f - (Math.min(f, 0.5f) / 0.5f));
                } else {
                    childAt.setAlpha(f5);
                }
            }
        }
        for (int i2 = 0; i2 < this.topicsGridView.getChildCount(); i2++) {
            View childAt2 = this.topicsGridView.getChildAt(i2);
            if (childAt2 instanceof ShareTopicCell) {
                double d = 1.0f - interpolation;
                childAt2.setTranslationX((float) ((-(childAt2.getX() - view.getX())) * Math.pow(d, 2.0d)));
                childAt2.setTranslationY((float) ((-((childAt2.getY() + this.topicsGridView.getTranslationY()) - view.getY())) * Math.pow(d, 2.0d)));
            }
        }
        this.containerView.requestLayout();
        mainGridView.invalidate();
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public int getContainerViewHeight() {
        return this.containerView.getMeasuredHeight() - this.containerViewTop;
    }

    private boolean onSendLongClick(View view) {
        int measuredHeight;
        ChatActivity chatActivity;
        if (this.parentActivity == null) {
            return false;
        }
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setOrientation(1);
        ActionBarPopupWindow.ActionBarPopupWindowLayout actionBarPopupWindowLayout = new ActionBarPopupWindow.ActionBarPopupWindowLayout(this.parentActivity, this.resourcesProvider);
        if (this.darkTheme) {
            actionBarPopupWindowLayout.setBackgroundColor(Theme.getColor(Theme.key_voipgroup_inviteMembersBackground));
        }
        actionBarPopupWindowLayout.setAnimationEnabled(false);
        actionBarPopupWindowLayout.setOnTouchListener(new View.OnTouchListener() { // from class: org.telegram.ui.Components.ShareAlert.26
            private Rect popupRect = new Rect();

            {
                ShareAlert.this = this;
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                if (motionEvent.getActionMasked() == 0 && ShareAlert.this.sendPopupWindow != null && ShareAlert.this.sendPopupWindow.isShowing()) {
                    view2.getHitRect(this.popupRect);
                    if (this.popupRect.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                        return false;
                    }
                    ShareAlert.this.sendPopupWindow.dismiss();
                    return false;
                }
                return false;
            }
        });
        actionBarPopupWindowLayout.setDispatchKeyEventListener(new ActionBarPopupWindow.OnDispatchKeyEventListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda18
            @Override // org.telegram.p043ui.ActionBar.ActionBarPopupWindow.OnDispatchKeyEventListener
            public final void onDispatchKeyEvent(KeyEvent keyEvent) {
                ShareAlert.this.lambda$onSendLongClick$21(keyEvent);
            }
        });
        actionBarPopupWindowLayout.setShownFromBottom(false);
        ActionBarMenuSubItem actionBarMenuSubItem = new ActionBarMenuSubItem(getContext(), true, true, this.resourcesProvider);
        if (this.darkTheme) {
            actionBarMenuSubItem.setTextColor(getThemedColor(Theme.key_voipgroup_nameText));
            actionBarMenuSubItem.setIconColor(getThemedColor(Theme.key_windowBackgroundWhiteHintText));
        }
        if (ToolsController.getInstance(this.currentAccount).isSilentSendingEnabled()) {
            actionBarMenuSubItem.setTextAndIcon(LocaleController.getInternalString(C3632R.string.send_with_sound), C3632R.C3634drawable.input_notify_on);
        } else {
            actionBarMenuSubItem.setTextAndIcon(LocaleController.getString("SendWithoutSound", C3632R.string.SendWithoutSound), C3632R.C3634drawable.input_notify_off);
        }
        actionBarMenuSubItem.setMinimumWidth(AndroidUtilities.m104dp(196));
        actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem, LayoutHelper.createLinear(-1, 48));
        actionBarMenuSubItem.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ShareAlert.this.lambda$onSendLongClick$22(view2);
            }
        });
        ActionBarMenuSubItem actionBarMenuSubItem2 = new ActionBarMenuSubItem(getContext(), true, true, this.resourcesProvider);
        if (this.darkTheme) {
            actionBarMenuSubItem2.setTextColor(getThemedColor(Theme.key_voipgroup_nameText));
            actionBarMenuSubItem2.setIconColor(getThemedColor(Theme.key_windowBackgroundWhiteHintText));
        }
        actionBarMenuSubItem2.setTextAndIcon(LocaleController.getString("SendMessage", C3632R.string.SendMessage), C3632R.C3634drawable.msg_send);
        actionBarMenuSubItem2.setMinimumWidth(AndroidUtilities.m104dp(196));
        actionBarPopupWindowLayout.addView((View) actionBarMenuSubItem2, LayoutHelper.createLinear(-1, 48));
        actionBarMenuSubItem2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda5
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                ShareAlert.this.lambda$onSendLongClick$23(view2);
            }
        });
        actionBarPopupWindowLayout.setupRadialSelectors(getThemedColor(this.darkTheme ? Theme.key_voipgroup_listSelector : Theme.key_dialogButtonSelector));
        linearLayout.addView(actionBarPopupWindowLayout, LayoutHelper.createLinear(-1, -2));
        ActionBarPopupWindow actionBarPopupWindow = new ActionBarPopupWindow(linearLayout, -2, -2);
        this.sendPopupWindow = actionBarPopupWindow;
        actionBarPopupWindow.setAnimationEnabled(false);
        this.sendPopupWindow.setAnimationStyle(C3632R.style.PopupContextAnimation2);
        this.sendPopupWindow.setOutsideTouchable(true);
        this.sendPopupWindow.setClippingEnabled(true);
        this.sendPopupWindow.setInputMethodMode(2);
        this.sendPopupWindow.setSoftInputMode(0);
        this.sendPopupWindow.getContentView().setFocusableInTouchMode(true);
        SharedConfig.removeScheduledOrNoSoundHint();
        linearLayout.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(1000), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m104dp(1000), Integer.MIN_VALUE));
        this.sendPopupWindow.setFocusable(true);
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        if (this.keyboardVisible && (chatActivity = this.parentFragment) != null && chatActivity.contentView.getMeasuredHeight() > AndroidUtilities.m104dp(58)) {
            measuredHeight = iArr[1] + view.getMeasuredHeight();
        } else {
            measuredHeight = (iArr[1] - linearLayout.getMeasuredHeight()) - AndroidUtilities.m104dp(2);
        }
        this.sendPopupWindow.showAtLocation(view, 51, ((iArr[0] + view.getMeasuredWidth()) - linearLayout.getMeasuredWidth()) + AndroidUtilities.m104dp(8), measuredHeight);
        this.sendPopupWindow.dimBehind();
        view.performHapticFeedback(3, 2);
        return true;
    }

    public /* synthetic */ void lambda$onSendLongClick$21(KeyEvent keyEvent) {
        ActionBarPopupWindow actionBarPopupWindow;
        if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && (actionBarPopupWindow = this.sendPopupWindow) != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
    }

    public /* synthetic */ void lambda$onSendLongClick$22(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        sendInternal(false);
    }

    public /* synthetic */ void lambda$onSendLongClick$23(View view) {
        ActionBarPopupWindow actionBarPopupWindow = this.sendPopupWindow;
        if (actionBarPopupWindow != null && actionBarPopupWindow.isShowing()) {
            this.sendPopupWindow.dismiss();
        }
        sendInternal(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7, types: [org.telegram.messenger.MessageObject] */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v15 */
    /* JADX WARN: Type inference failed for: r1v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r5v48, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v50 */
    /* JADX WARN: Type inference failed for: r5v76, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v78 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2, types: [org.telegram.messenger.MessageObject] */
    protected void sendInternal(boolean z) {
        char c;
        MessageObject messageObject;
        long j;
        int i;
        char c2;
        MessageObject messageObject2;
        int i2;
        TLRPC$TL_forumTopic tLRPC$TL_forumTopic;
        SendMessagesHelper.SendMessageParams m91of;
        ArrayList<Long> arrayList;
        MessageObject messageObject3;
        long j2;
        int i3;
        ArrayList arrayList2;
        ?? r1 = 0;
        int i4 = 0;
        while (true) {
            boolean z2 = true;
            if (i4 < this.selectedDialogs.size()) {
                long keyAt = this.selectedDialogs.keyAt(i4);
                if (AlertsCreator.checkSlowMode(getContext(), this.currentAccount, keyAt, (this.frameLayout2.getTag() == null || this.commentTextView.length() <= 0) ? false : false)) {
                    return;
                }
                i4++;
            } else {
                CharSequence[] charSequenceArr = {this.commentTextView.getText()};
                ArrayList<TLRPC$MessageEntity> entities = MediaDataController.getInstance(this.currentAccount).getEntities(charSequenceArr, true);
                TLRPC$TL_forumTopic tLRPC$TL_forumTopic2 = null;
                if (this.sendingMessageObjects != null) {
                    ArrayList arrayList3 = new ArrayList();
                    int i5 = 0;
                    while (true) {
                        if (i5 >= this.selectedDialogs.size()) {
                            arrayList = arrayList3;
                            break;
                        }
                        long keyAt2 = this.selectedDialogs.keyAt(i5);
                        TLRPC$TL_forumTopic tLRPC$TL_forumTopic3 = this.selectedDialogTopics.get(this.selectedDialogs.get(keyAt2));
                        MessageObject messageObject4 = tLRPC$TL_forumTopic3 != null ? new MessageObject(this.currentAccount, tLRPC$TL_forumTopic3.topicStartMessage, r1, r1) : tLRPC$TL_forumTopic2;
                        if (messageObject4 != 0) {
                            messageObject4.isTopicMainMessage = true;
                        }
                        if (this.frameLayout2.getTag() == null || this.commentTextView.length() <= 0) {
                            messageObject3 = messageObject4;
                            j2 = keyAt2;
                            i3 = i5;
                            arrayList2 = arrayList3;
                        } else {
                            messageObject3 = messageObject4;
                            j2 = keyAt2;
                            i3 = i5;
                            arrayList2 = arrayList3;
                            SendMessagesHelper.getInstance(this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.m91of(charSequenceArr[r1] == null ? tLRPC$TL_forumTopic2 : charSequenceArr[r1].toString(), keyAt2, messageObject4, messageObject4, null, true, entities, null, null, z, 0, null, false, null));
                        }
                        int sendMessage = SendMessagesHelper.getInstance(this.currentAccount).sendMessage(this.sendingMessageObjects, j2, !this.showSendersName, false, z, 0, messageObject3, this.forwardingParams, true);
                        if (sendMessage != 0) {
                            arrayList = arrayList2;
                            arrayList.add(Long.valueOf(j2));
                        } else {
                            arrayList = arrayList2;
                        }
                        if (this.selectedDialogs.size() == 1) {
                            tLRPC$TL_forumTopic2 = null;
                            AlertsCreator.showSendMediaAlert(sendMessage, this.parentFragment, null);
                            if (sendMessage != 0) {
                                break;
                            }
                        } else {
                            tLRPC$TL_forumTopic2 = null;
                        }
                        i5 = i3 + 1;
                        arrayList3 = arrayList;
                        r1 = 0;
                        tLRPC$TL_forumTopic2 = tLRPC$TL_forumTopic2;
                    }
                    for (Long l : arrayList) {
                        long longValue = l.longValue();
                        TLRPC$Dialog tLRPC$Dialog = this.selectedDialogs.get(longValue);
                        this.selectedDialogs.remove(longValue);
                        if (tLRPC$Dialog != null) {
                            this.selectedDialogTopics.remove(tLRPC$Dialog);
                        }
                    }
                    if (!this.selectedDialogs.isEmpty()) {
                        LongSparseArray<TLRPC$Dialog> longSparseArray = this.selectedDialogs;
                        int size = this.sendingMessageObjects.size();
                        if (this.selectedDialogs.size() == 1) {
                            tLRPC$TL_forumTopic2 = this.selectedDialogTopics.get(this.selectedDialogs.valueAt(0));
                        }
                        onSend(longSparseArray, size, tLRPC$TL_forumTopic2);
                    }
                } else {
                    SwitchView switchView = this.switchView;
                    int i6 = switchView != null ? switchView.currentTab : 0;
                    if (this.storyItem != null) {
                        int i7 = 0;
                        while (i7 < this.selectedDialogs.size()) {
                            long keyAt3 = this.selectedDialogs.keyAt(i7);
                            TLRPC$TL_forumTopic tLRPC$TL_forumTopic4 = this.selectedDialogTopics.get(this.selectedDialogs.get(keyAt3));
                            if (tLRPC$TL_forumTopic4 != null) {
                                c2 = 0;
                                messageObject2 = new MessageObject(this.currentAccount, tLRPC$TL_forumTopic4.topicStartMessage, false, false);
                            } else {
                                c2 = 0;
                                messageObject2 = tLRPC$TL_forumTopic2;
                            }
                            if (this.storyItem == null) {
                                if (this.frameLayout2.getTag() != null && this.commentTextView.length() > 0) {
                                    i2 = i7;
                                    tLRPC$TL_forumTopic = tLRPC$TL_forumTopic2;
                                    m91of = SendMessagesHelper.SendMessageParams.m91of(charSequenceArr[c2] == null ? tLRPC$TL_forumTopic2 : charSequenceArr[c2].toString(), keyAt3, null, messageObject2, null, true, entities, null, null, z, 0, null, false, null);
                                } else {
                                    i2 = i7;
                                    tLRPC$TL_forumTopic = tLRPC$TL_forumTopic2;
                                    m91of = SendMessagesHelper.SendMessageParams.m91of(this.sendingText[i6], keyAt3, null, messageObject2, null, true, null, null, null, z, 0, null, false, null);
                                }
                            } else {
                                i2 = i7;
                                tLRPC$TL_forumTopic = tLRPC$TL_forumTopic2;
                                if (this.frameLayout2.getTag() != null && this.commentTextView.length() > 0 && charSequenceArr[0] != null) {
                                    SendMessagesHelper.getInstance(this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.m91of(charSequenceArr[0].toString(), keyAt3, null, messageObject2, null, true, null, null, null, z, 0, null, false, null));
                                }
                                m91of = SendMessagesHelper.SendMessageParams.m91of(null, keyAt3, null, messageObject2, null, true, null, null, null, z, 0, null, false, null);
                                m91of.sendingStory = this.storyItem;
                            }
                            SendMessagesHelper.getInstance(this.currentAccount).sendMessage(m91of);
                            i7 = i2 + 1;
                            tLRPC$TL_forumTopic2 = tLRPC$TL_forumTopic;
                        }
                    } else if (this.sendingText[i6] != null) {
                        int i8 = 0;
                        while (i8 < this.selectedDialogs.size()) {
                            long keyAt4 = this.selectedDialogs.keyAt(i8);
                            TLRPC$TL_forumTopic tLRPC$TL_forumTopic5 = this.selectedDialogTopics.get(this.selectedDialogs.get(keyAt4));
                            if (tLRPC$TL_forumTopic5 != null) {
                                c = 0;
                                messageObject = new MessageObject(this.currentAccount, tLRPC$TL_forumTopic5.topicStartMessage, false, false);
                            } else {
                                c = 0;
                                messageObject = null;
                            }
                            if (this.frameLayout2.getTag() == null || this.commentTextView.length() <= 0) {
                                j = keyAt4;
                                i = i8;
                            } else {
                                j = keyAt4;
                                i = i8;
                                SendMessagesHelper.getInstance(this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.m91of(charSequenceArr[c] == null ? null : charSequenceArr[c].toString(), keyAt4, null, messageObject, null, true, entities, null, null, z, 0, null, false, null));
                            }
                            SendMessagesHelper.getInstance(this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.m91of(this.sendingText[i6], j, null, messageObject, null, true, null, null, null, z, 0, null, false, null));
                            i8 = i + 1;
                        }
                    }
                    LongSparseArray<TLRPC$Dialog> longSparseArray2 = this.selectedDialogs;
                    onSend(longSparseArray2, 1, this.selectedDialogTopics.get(longSparseArray2.valueAt(0)));
                }
                ShareAlertDelegate shareAlertDelegate = this.delegate;
                if (shareAlertDelegate != null) {
                    shareAlertDelegate.didShare();
                }
                dismiss();
                return;
            }
        }
    }

    public int getCurrentTop() {
        if (this.gridView.getChildCount() != 0) {
            int i = 0;
            View childAt = this.gridView.getChildAt(0);
            RecyclerListView.Holder holder = (RecyclerListView.Holder) this.gridView.findContainingViewHolder(childAt);
            if (holder != null) {
                int paddingTop = this.gridView.getPaddingTop();
                if (holder.getLayoutPosition() == 0 && childAt.getTop() >= 0) {
                    i = childAt.getTop();
                }
                return paddingTop - i;
            }
            return -1000;
        }
        return -1000;
    }

    private RecyclerListView getMainGridView() {
        return (this.searchIsVisible || this.searchWasVisibleBeforeTopics) ? this.searchGridView : this.gridView;
    }

    public void setDelegate(ShareAlertDelegate shareAlertDelegate) {
        this.delegate = shareAlertDelegate;
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet
    public void dismissInternal() {
        super.dismissInternal();
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onDestroy();
        }
    }

    @Override // android.app.Dialog
    public void onBackPressed() {
        MessagePreviewView messagePreviewView = this.forwardingPreviewView;
        if (messagePreviewView != null && messagePreviewView.isShowing()) {
            this.forwardingPreviewView.dismiss(false);
        } else if (this.selectedTopicDialog != null) {
            collapseTopics();
        } else {
            EditTextEmoji editTextEmoji = this.commentTextView;
            if (editTextEmoji != null && editTextEmoji.isPopupShowing()) {
                this.commentTextView.hidePopup(true);
            } else {
                super.onBackPressed();
            }
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        int i3 = NotificationCenter.dialogsNeedReload;
        if (i == i3) {
            ShareDialogsAdapter shareDialogsAdapter = this.listAdapter;
            if (shareDialogsAdapter != null) {
                shareDialogsAdapter.fetchDialogs();
            }
            NotificationCenter.getInstance(this.currentAccount).removeObserver(this, i3);
        }
    }

    public void updateLayout() {
        if (this.panTranslationMoveLayout) {
            return;
        }
        RecyclerListView recyclerListView = this.searchIsVisible ? this.searchGridView : this.gridView;
        if (recyclerListView.getChildCount() <= 0) {
            return;
        }
        View childAt = recyclerListView.getChildAt(0);
        for (int i = 0; i < recyclerListView.getChildCount(); i++) {
            if (recyclerListView.getChildAt(i).getTop() < childAt.getTop()) {
                childAt = recyclerListView.getChildAt(i);
            }
        }
        RecyclerListView.Holder holder = (RecyclerListView.Holder) recyclerListView.findContainingViewHolder(childAt);
        int top = childAt.getTop() - AndroidUtilities.m104dp(8);
        int i2 = (top <= 0 || holder == null || holder.getAdapterPosition() != 0) ? 0 : top;
        if (top >= 0 && holder != null && holder.getAdapterPosition() == 0) {
            this.lastOffset = childAt.getTop();
            runShadowAnimation(0, false);
        } else {
            this.lastOffset = Integer.MAX_VALUE;
            runShadowAnimation(0, true);
            top = i2;
        }
        if (this.topicsGridView.getVisibility() == 0) {
            RecyclerListView recyclerListView2 = this.topicsGridView;
            if (recyclerListView2.getChildCount() <= 0) {
                return;
            }
            View childAt2 = recyclerListView2.getChildAt(0);
            for (int i3 = 0; i3 < recyclerListView2.getChildCount(); i3++) {
                if (recyclerListView2.getChildAt(i3).getTop() < childAt2.getTop()) {
                    childAt2 = recyclerListView2.getChildAt(i3);
                }
            }
            RecyclerListView.Holder holder2 = (RecyclerListView.Holder) recyclerListView2.findContainingViewHolder(childAt2);
            int top2 = childAt2.getTop() - AndroidUtilities.m104dp(8);
            int i4 = (top2 <= 0 || holder2 == null || holder2.getAdapterPosition() != 0) ? 0 : top2;
            if (top2 >= 0 && holder2 != null && holder2.getAdapterPosition() == 0) {
                this.lastOffset = childAt2.getTop();
                runShadowAnimation(0, false);
            } else {
                this.lastOffset = Integer.MAX_VALUE;
                runShadowAnimation(0, true);
                top2 = i4;
            }
            top = AndroidUtilities.lerp(top, top2, this.topicsGridView.getAlpha());
        }
        int i5 = this.scrollOffsetY;
        if (i5 != top) {
            this.previousScrollOffsetY = i5;
            RecyclerListView recyclerListView3 = this.gridView;
            float f = top;
            int i6 = (int) (this.currentPanTranslationY + f);
            this.scrollOffsetY = i6;
            recyclerListView3.setTopGlowOffset(i6);
            RecyclerListView recyclerListView4 = this.searchGridView;
            int i7 = (int) (this.currentPanTranslationY + f);
            this.scrollOffsetY = i7;
            recyclerListView4.setTopGlowOffset(i7);
            RecyclerListView recyclerListView5 = this.topicsGridView;
            int i8 = (int) (f + this.currentPanTranslationY);
            this.scrollOffsetY = i8;
            recyclerListView5.setTopGlowOffset(i8);
            this.frameLayout.setTranslationY(this.scrollOffsetY + this.currentPanTranslationY);
            this.searchEmptyView.setTranslationY(this.scrollOffsetY + this.currentPanTranslationY);
            this.containerView.invalidate();
        }
    }

    private void runShadowAnimation(final int i, final boolean z) {
        if ((!z || this.shadow[i].getTag() == null) && (z || this.shadow[i].getTag() != null)) {
            return;
        }
        this.shadow[i].setTag(z ? null : 1);
        if (z) {
            this.shadow[i].setVisibility(0);
        }
        AnimatorSet[] animatorSetArr = this.shadowAnimation;
        if (animatorSetArr[i] != null) {
            animatorSetArr[i].cancel();
        }
        this.shadowAnimation[i] = new AnimatorSet();
        AnimatorSet animatorSet = this.shadowAnimation[i];
        Animator[] animatorArr = new Animator[1];
        View view = this.shadow[i];
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        fArr[0] = z ? 1.0f : BitmapDescriptorFactory.HUE_RED;
        animatorArr[0] = ObjectAnimator.ofFloat(view, property, fArr);
        animatorSet.playTogether(animatorArr);
        this.shadowAnimation[i].setDuration(150L);
        this.shadowAnimation[i].addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ShareAlert.27
            {
                ShareAlert.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ShareAlert.this.shadowAnimation[i] == null || !ShareAlert.this.shadowAnimation[i].equals(animator)) {
                    return;
                }
                if (!z) {
                    ShareAlert.this.shadow[i].setVisibility(4);
                }
                ShareAlert.this.shadowAnimation[i] = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (ShareAlert.this.shadowAnimation[i] == null || !ShareAlert.this.shadowAnimation[i].equals(animator)) {
                    return;
                }
                ShareAlert.this.shadowAnimation[i] = null;
            }
        });
        this.shadowAnimation[i].start();
    }

    private void copyLink(Context context) {
        String str;
        final boolean z = false;
        if (this.exportedMessageLink == null && this.linkToCopy[0] == null) {
            return;
        }
        try {
            SwitchView switchView = this.switchView;
            if (switchView != null) {
                str = this.linkToCopy[switchView.currentTab];
            } else {
                str = this.linkToCopy[0];
            }
            ClipboardManager clipboardManager = (ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard");
            if (str == null) {
                str = this.exportedMessageLink.link;
            }
            clipboardManager.setPrimaryClip(ClipData.newPlainText("label", str));
            ShareAlertDelegate shareAlertDelegate = this.delegate;
            if ((shareAlertDelegate == null || !shareAlertDelegate.didCopy()) && (this.parentActivity instanceof LaunchActivity)) {
                TLRPC$TL_exportedMessageLink tLRPC$TL_exportedMessageLink = this.exportedMessageLink;
                if (tLRPC$TL_exportedMessageLink != null && tLRPC$TL_exportedMessageLink.link.contains("/c/")) {
                    z = true;
                }
                ((LaunchActivity) this.parentActivity).showBulletin(new Function() { // from class: org.telegram.ui.Components.ShareAlert$$ExternalSyntheticLambda9
                    @Override // androidx.arch.core.util.Function
                    public final Object apply(Object obj) {
                        Bulletin lambda$copyLink$24;
                        lambda$copyLink$24 = ShareAlert.this.lambda$copyLink$24(z, (BulletinFactory) obj);
                        return lambda$copyLink$24;
                    }
                });
            }
        } catch (Exception e) {
            FileLog.m99e(e);
        }
    }

    public /* synthetic */ Bulletin lambda$copyLink$24(boolean z, BulletinFactory bulletinFactory) {
        return bulletinFactory.createCopyLinkBulletin(z, this.resourcesProvider);
    }

    private boolean showCommentTextView(final boolean z) {
        if (z == (this.frameLayout2.getTag() != null)) {
            return false;
        }
        AnimatorSet animatorSet = this.animatorSet;
        if (animatorSet != null) {
            animatorSet.cancel();
        }
        this.frameLayout2.setTag(z ? 1 : null);
        if (this.commentTextView.getEditText().isFocused()) {
            AndroidUtilities.hideKeyboard(this.commentTextView.getEditText());
        }
        this.commentTextView.hidePopup(true);
        if (z) {
            ImageView imageView = this.forwardingOptionsButton;
            if (imageView != null) {
                imageView.setVisibility(0);
            }
            this.frameLayout2.setVisibility(0);
            this.writeButtonContainer.setVisibility(0);
        }
        TextView textView = this.pickerBottomLayout;
        if (textView != null) {
            ViewCompat.setImportantForAccessibility(textView, z ? 4 : 1);
        }
        LinearLayout linearLayout = this.sharesCountLayout;
        if (linearLayout != null) {
            ViewCompat.setImportantForAccessibility(linearLayout, z ? 4 : 1);
        }
        this.animatorSet = new AnimatorSet();
        ArrayList arrayList = new ArrayList();
        FrameLayout frameLayout = this.frameLayout2;
        Property property = View.ALPHA;
        float[] fArr = new float[1];
        float f = BitmapDescriptorFactory.HUE_RED;
        fArr[0] = z ? 1.0f : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(frameLayout, property, fArr));
        FrameLayout frameLayout2 = this.writeButtonContainer;
        Property property2 = View.SCALE_X;
        float[] fArr2 = new float[1];
        fArr2[0] = z ? 1.0f : 0.2f;
        arrayList.add(ObjectAnimator.ofFloat(frameLayout2, property2, fArr2));
        FrameLayout frameLayout3 = this.writeButtonContainer;
        Property property3 = View.SCALE_Y;
        float[] fArr3 = new float[1];
        fArr3[0] = z ? 1.0f : 0.2f;
        arrayList.add(ObjectAnimator.ofFloat(frameLayout3, property3, fArr3));
        FrameLayout frameLayout4 = this.writeButtonContainer;
        Property property4 = View.ALPHA;
        float[] fArr4 = new float[1];
        fArr4[0] = z ? 1.0f : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(frameLayout4, property4, fArr4));
        ImageView imageView2 = this.forwardingOptionsButton;
        if (imageView2 != null) {
            Property property5 = View.SCALE_X;
            float[] fArr5 = new float[1];
            fArr5[0] = z ? 1.0f : 0.2f;
            arrayList.add(ObjectAnimator.ofFloat(imageView2, property5, fArr5));
            ImageView imageView3 = this.forwardingOptionsButton;
            Property property6 = View.SCALE_Y;
            float[] fArr6 = new float[1];
            fArr6[0] = z ? 1.0f : 0.2f;
            arrayList.add(ObjectAnimator.ofFloat(imageView3, property6, fArr6));
            ImageView imageView4 = this.forwardingOptionsButton;
            Property property7 = View.ALPHA;
            float[] fArr7 = new float[1];
            fArr7[0] = z ? 1.0f : 0.0f;
            arrayList.add(ObjectAnimator.ofFloat(imageView4, property7, fArr7));
        }
        View view = this.selectedCountView;
        Property property8 = View.SCALE_X;
        float[] fArr8 = new float[1];
        fArr8[0] = z ? 1.0f : 0.2f;
        arrayList.add(ObjectAnimator.ofFloat(view, property8, fArr8));
        View view2 = this.selectedCountView;
        Property property9 = View.SCALE_Y;
        float[] fArr9 = new float[1];
        fArr9[0] = z ? 1.0f : 0.2f;
        arrayList.add(ObjectAnimator.ofFloat(view2, property9, fArr9));
        View view3 = this.selectedCountView;
        Property property10 = View.ALPHA;
        float[] fArr10 = new float[1];
        fArr10[0] = z ? 1.0f : 0.0f;
        arrayList.add(ObjectAnimator.ofFloat(view3, property10, fArr10));
        TextView textView2 = this.pickerBottomLayout;
        if (textView2 == null || textView2.getVisibility() != 0) {
            View view4 = this.shadow[1];
            Property property11 = View.ALPHA;
            float[] fArr11 = new float[1];
            if (z) {
                f = 1.0f;
            }
            fArr11[0] = f;
            arrayList.add(ObjectAnimator.ofFloat(view4, property11, fArr11));
        }
        this.animatorSet.playTogether(arrayList);
        this.animatorSet.setInterpolator(new DecelerateInterpolator());
        this.animatorSet.setDuration(180L);
        this.animatorSet.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.Components.ShareAlert.28
            {
                ShareAlert.this = this;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (animator.equals(ShareAlert.this.animatorSet)) {
                    if (!z) {
                        if (ShareAlert.this.forwardingOptionsButton != null) {
                            ShareAlert.this.forwardingOptionsButton.setVisibility(4);
                        }
                        ShareAlert.this.frameLayout2.setVisibility(4);
                        ShareAlert.this.writeButtonContainer.setVisibility(4);
                    }
                    ShareAlert.this.animatorSet = null;
                }
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                if (animator.equals(ShareAlert.this.animatorSet)) {
                    ShareAlert.this.animatorSet = null;
                }
            }
        });
        this.animatorSet.start();
        return true;
    }

    public void updateSelectedCount(int i) {
        if (this.selectedDialogs.size() == 0) {
            this.selectedCountView.setPivotX(BitmapDescriptorFactory.HUE_RED);
            this.selectedCountView.setPivotY(BitmapDescriptorFactory.HUE_RED);
            showCommentTextView(false);
            return;
        }
        this.selectedCountView.invalidate();
        if (!showCommentTextView(true) && i != 0) {
            this.selectedCountView.setPivotX(AndroidUtilities.m104dp(21));
            this.selectedCountView.setPivotY(AndroidUtilities.m104dp(12));
            AnimatorSet animatorSet = new AnimatorSet();
            Animator[] animatorArr = new Animator[2];
            View view = this.selectedCountView;
            Property property = View.SCALE_X;
            float[] fArr = new float[2];
            fArr[0] = i == 1 ? 1.1f : 0.9f;
            fArr[1] = 1.0f;
            animatorArr[0] = ObjectAnimator.ofFloat(view, property, fArr);
            View view2 = this.selectedCountView;
            Property property2 = View.SCALE_Y;
            float[] fArr2 = new float[2];
            fArr2[0] = i != 1 ? 0.9f : 1.1f;
            fArr2[1] = 1.0f;
            animatorArr[1] = ObjectAnimator.ofFloat(view2, property2, fArr2);
            animatorSet.playTogether(animatorArr);
            animatorSet.setInterpolator(new OvershootInterpolator());
            animatorSet.setDuration(180L);
            animatorSet.start();
            return;
        }
        this.selectedCountView.setPivotX(BitmapDescriptorFactory.HUE_RED);
        this.selectedCountView.setPivotY(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // org.telegram.p043ui.ActionBar.BottomSheet, android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        EditTextEmoji editTextEmoji = this.commentTextView;
        if (editTextEmoji != null) {
            AndroidUtilities.hideKeyboard(editTextEmoji.getEditText());
        }
        this.fullyShown = false;
        super.dismiss();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.dialogsNeedReload);
    }

    /* renamed from: org.telegram.ui.Components.ShareAlert$ShareDialogsAdapter */
    /* loaded from: classes6.dex */
    public class ShareDialogsAdapter extends RecyclerListView.SelectionAdapter {
        private Context context;
        private ArrayList<TLRPC$Dialog> dialogs = new ArrayList<>();
        private LongSparseArray<TLRPC$Dialog> dialogsMap = new LongSparseArray<>();

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == 0 ? 1 : 0;
        }

        public ShareDialogsAdapter(Context context) {
            ShareAlert.this = r1;
            this.context = context;
            fetchDialogs();
        }

        public void fetchDialogs() {
            TLRPC$TL_chatAdminRights tLRPC$TL_chatAdminRights;
            this.dialogs.clear();
            this.dialogsMap.clear();
            long j = UserConfig.getInstance(((BottomSheet) ShareAlert.this).currentAccount).clientUserId;
            if (!MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).dialogsForward.isEmpty()) {
                TLRPC$Dialog tLRPC$Dialog = MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).dialogsForward.get(0);
                this.dialogs.add(tLRPC$Dialog);
                this.dialogsMap.put(tLRPC$Dialog.f1608id, tLRPC$Dialog);
            }
            ArrayList arrayList = new ArrayList();
            ArrayList<TLRPC$Dialog> allDialogs = MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).getAllDialogs();
            for (int i = 0; i < allDialogs.size(); i++) {
                TLRPC$Dialog tLRPC$Dialog2 = allDialogs.get(i);
                if (tLRPC$Dialog2 instanceof TLRPC$TL_dialog) {
                    long j2 = tLRPC$Dialog2.f1608id;
                    if (j2 != j && !DialogObject.isEncryptedDialog(j2)) {
                        if (!DialogObject.isUserDialog(tLRPC$Dialog2.f1608id)) {
                            TLRPC$Chat chat = MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).getChat(Long.valueOf(-tLRPC$Dialog2.f1608id));
                            if (!AlbumsController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).isDialogAlbum(tLRPC$Dialog2.f1608id) && chat != null && !ChatObject.isNotInChat(chat) && ((!chat.gigagroup || ChatObject.hasAdminRights(chat)) && (!ChatObject.isChannel(chat) || chat.creator || (((tLRPC$TL_chatAdminRights = chat.admin_rights) != null && tLRPC$TL_chatAdminRights.post_messages) || chat.megagroup)))) {
                                if (tLRPC$Dialog2.folder_id == 1) {
                                    arrayList.add(tLRPC$Dialog2);
                                } else {
                                    this.dialogs.add(tLRPC$Dialog2);
                                }
                                this.dialogsMap.put(tLRPC$Dialog2.f1608id, tLRPC$Dialog2);
                            }
                        } else {
                            if (tLRPC$Dialog2.folder_id == 1) {
                                arrayList.add(tLRPC$Dialog2);
                            } else {
                                this.dialogs.add(tLRPC$Dialog2);
                            }
                            this.dialogsMap.put(tLRPC$Dialog2.f1608id, tLRPC$Dialog2);
                        }
                    }
                }
            }
            this.dialogs.addAll(arrayList);
            if (ShareAlert.this.parentFragment != null) {
                int i2 = ShareAlert.this.parentFragment.shareAlertDebugMode;
                if (i2 == 1) {
                    ArrayList<TLRPC$Dialog> arrayList2 = this.dialogs;
                    ArrayList arrayList3 = new ArrayList(arrayList2.subList(0, Math.min(4, arrayList2.size())));
                    this.dialogs.clear();
                    this.dialogs.addAll(arrayList3);
                } else if (i2 == 2) {
                    while (!this.dialogs.isEmpty() && this.dialogs.size() < 80) {
                        ArrayList<TLRPC$Dialog> arrayList4 = this.dialogs;
                        arrayList4.add(arrayList4.get(arrayList4.size() - 1));
                    }
                }
            }
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            int size = this.dialogs.size();
            return size != 0 ? size + 1 : size;
        }

        public TLRPC$Dialog getItem(int i) {
            int i2 = i - 1;
            if (i2 < 0 || i2 >= this.dialogs.size()) {
                return null;
            }
            return this.dialogs.get(i2);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() != 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View shareDialogCell;
            if (i == 0) {
                shareDialogCell = new ShareDialogCell(this.context, ShareAlert.this.darkTheme ? 1 : 0, ShareAlert.this.resourcesProvider);
                shareDialogCell.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m104dp(100)));
            } else {
                shareDialogCell = new View(this.context);
                shareDialogCell.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m104dp((!ShareAlert.this.darkTheme || ShareAlert.this.linkToCopy[1] == null) ? 56 : 109)));
            }
            return new RecyclerListView.Holder(shareDialogCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder.getItemViewType() == 0) {
                ShareDialogCell shareDialogCell = (ShareDialogCell) viewHolder.itemView;
                TLRPC$Dialog item = getItem(i);
                shareDialogCell.setTopic(ShareAlert.this.selectedDialogTopics.get(item), false);
                long j = item.f1608id;
                shareDialogCell.setDialog(j, ShareAlert.this.selectedDialogs.indexOfKey(j) >= 0, null);
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.ShareAlert$ShareTopicsAdapter */
    /* loaded from: classes6.dex */
    public class ShareTopicsAdapter extends RecyclerListView.SelectionAdapter {
        private Context context;
        private List<TLRPC$TL_forumTopic> topics;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            return i == 0 ? 1 : 0;
        }

        public ShareTopicsAdapter(Context context) {
            ShareAlert.this = r1;
            this.context = context;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<TLRPC$TL_forumTopic> list = this.topics;
            if (list == null) {
                return 0;
            }
            return list.size() + 1;
        }

        public TLRPC$TL_forumTopic getItem(int i) {
            int i2 = i - 1;
            List<TLRPC$TL_forumTopic> list = this.topics;
            if (list == null || i2 < 0 || i2 >= list.size()) {
                return null;
            }
            return this.topics.get(i2);
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return viewHolder.getItemViewType() != 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View shareTopicCell;
            if (i == 0) {
                shareTopicCell = new ShareTopicCell(this.context, ShareAlert.this.resourcesProvider);
                shareTopicCell.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m104dp(100)));
            } else {
                shareTopicCell = new View(this.context);
                shareTopicCell.setLayoutParams(new RecyclerView.LayoutParams(-1, C3704ActionBar.getCurrentActionBarHeight()));
            }
            return new RecyclerListView.Holder(shareTopicCell);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder.getItemViewType() == 0) {
                ShareTopicCell shareTopicCell = (ShareTopicCell) viewHolder.itemView;
                TLRPC$TL_forumTopic item = getItem(i);
                shareTopicCell.setTopic(ShareAlert.this.selectedTopicDialog, item, ShareAlert.this.selectedDialogs.indexOfKey((long) item.f1658id) >= 0, null);
            }
        }
    }

    /* renamed from: org.telegram.ui.Components.ShareAlert$ShareSearchAdapter */
    /* loaded from: classes6.dex */
    public class ShareSearchAdapter extends RecyclerListView.SelectionAdapter {
        DialogsSearchAdapter.CategoryAdapterRecycler categoryAdapter;
        private Context context;
        int itemsCount;
        private int lastGlobalSearchId;
        int lastItemCont;
        private int lastLocalSearchId;
        private int lastSearchId;
        private String lastSearchText;
        private SearchAdapterHelper searchAdapterHelper;
        private Runnable searchRunnable;
        private Runnable searchRunnable2;
        private ArrayList<Object> searchResult = new ArrayList<>();
        int hintsCell = -1;
        int resentTitleCell = -1;
        int firstEmptyViewCell = -1;
        int recentDialogsStartRow = -1;
        int lastFilledItem = -1;
        boolean internalDialogsIsSearching = false;

        public ShareSearchAdapter(Context context) {
            ShareAlert.this = r2;
            this.context = context;
            SearchAdapterHelper searchAdapterHelper = new SearchAdapterHelper(false);
            this.searchAdapterHelper = searchAdapterHelper;
            searchAdapterHelper.setDelegate(new SearchAdapterHelper.SearchAdapterHelperDelegate(r2) { // from class: org.telegram.ui.Components.ShareAlert.ShareSearchAdapter.1
                @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ LongSparseArray getExcludeCallParticipants() {
                    return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$getExcludeCallParticipants(this);
                }

                @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ LongSparseArray getExcludeUsers() {
                    return SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$getExcludeUsers(this);
                }

                @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public /* synthetic */ void onSetHashtags(ArrayList arrayList, HashMap hashMap) {
                    SearchAdapterHelper.SearchAdapterHelperDelegate.CC.$default$onSetHashtags(this, arrayList, hashMap);
                }

                {
                    ShareSearchAdapter.this = this;
                }

                @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public void onDataSetChanged(int i) {
                    ShareSearchAdapter.this.lastGlobalSearchId = i;
                    if (ShareSearchAdapter.this.lastLocalSearchId != i) {
                        ShareSearchAdapter.this.searchResult.clear();
                    }
                    ShareSearchAdapter shareSearchAdapter = ShareSearchAdapter.this;
                    int i2 = shareSearchAdapter.lastItemCont;
                    if (shareSearchAdapter.getItemCount() == 0 && !ShareSearchAdapter.this.searchAdapterHelper.isSearchInProgress()) {
                        ShareSearchAdapter shareSearchAdapter2 = ShareSearchAdapter.this;
                        if (!shareSearchAdapter2.internalDialogsIsSearching) {
                            ShareAlert.this.searchEmptyView.showProgress(false, true);
                            ShareSearchAdapter.this.notifyDataSetChanged();
                            ShareAlert.this.checkCurrentList(true);
                        }
                    }
                    ShareAlert.this.recyclerItemsEnterAnimator.showItemsAnimated(i2);
                    ShareSearchAdapter.this.notifyDataSetChanged();
                    ShareAlert.this.checkCurrentList(true);
                }

                @Override // org.telegram.p043ui.Adapters.SearchAdapterHelper.SearchAdapterHelperDelegate
                public boolean canApplySearchResults(int i) {
                    return i == ShareSearchAdapter.this.lastSearchId;
                }
            });
        }

        private void searchDialogsInternal(final String str, final int i) {
            MessagesStorage.getInstance(((BottomSheet) ShareAlert.this).currentAccount).getStorageQueue().postRunnable(new Runnable() { // from class: org.telegram.ui.Components.ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda2
                @Override // java.lang.Runnable
                public final void run() {
                    ShareAlert.ShareSearchAdapter.this.lambda$searchDialogsInternal$1(str, i);
                }
            });
        }

        /* JADX WARN: Removed duplicated region for block: B:298:0x01cf A[Catch: Exception -> 0x0418, LOOP:2: B:269:0x0111->B:298:0x01cf, LOOP_END, TryCatch #0 {Exception -> 0x0418, blocks: (B:226:0x0002, B:228:0x0011, B:230:0x001e, B:232:0x002c, B:239:0x003a, B:241:0x0041, B:242:0x0043, B:243:0x0068, B:245:0x006e, B:247:0x0086, B:249:0x0090, B:250:0x0098, B:252:0x009e, B:254:0x00a9, B:255:0x00b1, B:258:0x00c2, B:259:0x00e7, B:261:0x00ed, B:264:0x0101, B:266:0x0108, B:270:0x0113, B:272:0x011d, B:275:0x0136, B:277:0x013c, B:281:0x0154, B:288:0x0164, B:290:0x016b, B:292:0x0185, B:294:0x018d, B:296:0x01c1, B:295:0x0198, B:298:0x01cf, B:301:0x01e6, B:303:0x01f3, B:305:0x01f9, B:306:0x021f, B:308:0x0225, B:313:0x023c, B:315:0x0244, B:318:0x025b, B:320:0x0261, B:323:0x0277, B:324:0x027a, B:326:0x0281, B:328:0x028e, B:330:0x0294, B:332:0x029a, B:334:0x029e, B:336:0x02a2, B:338:0x02a6, B:340:0x02aa, B:343:0x02d0, B:345:0x02d8, B:346:0x02de, B:348:0x02e4, B:350:0x02ee, B:352:0x02f2, B:353:0x02f5, B:354:0x02f8, B:355:0x030f, B:357:0x0315, B:360:0x0321, B:363:0x0335, B:365:0x033e, B:369:0x034a, B:371:0x0352, B:374:0x0369, B:376:0x036f, B:380:0x0387, B:385:0x0392, B:387:0x0399, B:389:0x03ad, B:390:0x03b4, B:392:0x03bf, B:394:0x03f4, B:393:0x03cb, B:396:0x03fc, B:399:0x040a), top: B:404:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:396:0x03fc A[Catch: Exception -> 0x0418, LOOP:7: B:368:0x0348->B:396:0x03fc, LOOP_END, TryCatch #0 {Exception -> 0x0418, blocks: (B:226:0x0002, B:228:0x0011, B:230:0x001e, B:232:0x002c, B:239:0x003a, B:241:0x0041, B:242:0x0043, B:243:0x0068, B:245:0x006e, B:247:0x0086, B:249:0x0090, B:250:0x0098, B:252:0x009e, B:254:0x00a9, B:255:0x00b1, B:258:0x00c2, B:259:0x00e7, B:261:0x00ed, B:264:0x0101, B:266:0x0108, B:270:0x0113, B:272:0x011d, B:275:0x0136, B:277:0x013c, B:281:0x0154, B:288:0x0164, B:290:0x016b, B:292:0x0185, B:294:0x018d, B:296:0x01c1, B:295:0x0198, B:298:0x01cf, B:301:0x01e6, B:303:0x01f3, B:305:0x01f9, B:306:0x021f, B:308:0x0225, B:313:0x023c, B:315:0x0244, B:318:0x025b, B:320:0x0261, B:323:0x0277, B:324:0x027a, B:326:0x0281, B:328:0x028e, B:330:0x0294, B:332:0x029a, B:334:0x029e, B:336:0x02a2, B:338:0x02a6, B:340:0x02aa, B:343:0x02d0, B:345:0x02d8, B:346:0x02de, B:348:0x02e4, B:350:0x02ee, B:352:0x02f2, B:353:0x02f5, B:354:0x02f8, B:355:0x030f, B:357:0x0315, B:360:0x0321, B:363:0x0335, B:365:0x033e, B:369:0x034a, B:371:0x0352, B:374:0x0369, B:376:0x036f, B:380:0x0387, B:385:0x0392, B:387:0x0399, B:389:0x03ad, B:390:0x03b4, B:392:0x03bf, B:394:0x03f4, B:393:0x03cb, B:396:0x03fc, B:399:0x040a), top: B:404:0x0002 }] */
        /* JADX WARN: Removed duplicated region for block: B:421:0x0164 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:444:0x0392 A[SYNTHETIC] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public /* synthetic */ void lambda$searchDialogsInternal$1(java.lang.String r21, int r22) {
            /*
                Method dump skipped, instructions count: 1053
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.ShareAlert.ShareSearchAdapter.lambda$searchDialogsInternal$1(java.lang.String, int):void");
        }

        public static /* synthetic */ int lambda$searchDialogsInternal$0(Object obj, Object obj2) {
            int i = ((DialogSearchResult) obj).date;
            int i2 = ((DialogSearchResult) obj2).date;
            if (i < i2) {
                return 1;
            }
            return i > i2 ? -1 : 0;
        }

        private void updateSearchResults(final ArrayList<Object> arrayList, final int i) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda1
                @Override // java.lang.Runnable
                public final void run() {
                    ShareAlert.ShareSearchAdapter.this.lambda$updateSearchResults$2(i, arrayList);
                }
            });
        }

        public /* synthetic */ void lambda$updateSearchResults$2(int i, ArrayList arrayList) {
            if (i != this.lastSearchId) {
                return;
            }
            getItemCount();
            this.internalDialogsIsSearching = false;
            this.lastLocalSearchId = i;
            if (this.lastGlobalSearchId != i) {
                this.searchAdapterHelper.clear();
            }
            if (ShareAlert.this.gridView.getAdapter() != ShareAlert.this.searchAdapter) {
                ShareAlert shareAlert = ShareAlert.this;
                shareAlert.topBeforeSwitch = shareAlert.getCurrentTop();
                ShareAlert.this.searchAdapter.notifyDataSetChanged();
            }
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                TLObject tLObject = ((DialogSearchResult) arrayList.get(i2)).object;
                if (tLObject instanceof TLRPC$User) {
                    MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).putUser((TLRPC$User) tLObject, true);
                } else if (tLObject instanceof TLRPC$Chat) {
                    MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).putChat((TLRPC$Chat) tLObject, true);
                }
            }
            boolean z = !this.searchResult.isEmpty() && arrayList.isEmpty();
            if (this.searchResult.isEmpty()) {
                arrayList.isEmpty();
            }
            if (z) {
                ShareAlert shareAlert2 = ShareAlert.this;
                shareAlert2.topBeforeSwitch = shareAlert2.getCurrentTop();
            }
            this.searchResult = arrayList;
            this.searchAdapterHelper.mergeResults(arrayList, null);
            int i3 = this.lastItemCont;
            if (getItemCount() == 0 && !this.searchAdapterHelper.isSearchInProgress() && !this.internalDialogsIsSearching) {
                ShareAlert.this.searchEmptyView.showProgress(false, true);
            } else {
                ShareAlert.this.recyclerItemsEnterAnimator.showItemsAnimated(i3);
            }
            notifyDataSetChanged();
            ShareAlert.this.checkCurrentList(true);
        }

        public void searchDialogs(final String str) {
            if (str == null || !str.equals(this.lastSearchText)) {
                this.lastSearchText = str;
                if (this.searchRunnable != null) {
                    Utilities.searchQueue.cancelRunnable(this.searchRunnable);
                    this.searchRunnable = null;
                }
                Runnable runnable = this.searchRunnable2;
                if (runnable != null) {
                    AndroidUtilities.cancelRunOnUIThread(runnable);
                    this.searchRunnable2 = null;
                }
                this.searchResult.clear();
                this.searchAdapterHelper.mergeResults(null);
                this.searchAdapterHelper.queryServerSearch(null, true, true, true, true, false, 0L, false, 0, 0);
                notifyDataSetChanged();
                ShareAlert.this.checkCurrentList(true);
                if (TextUtils.isEmpty(str)) {
                    ShareAlert shareAlert = ShareAlert.this;
                    shareAlert.topBeforeSwitch = shareAlert.getCurrentTop();
                    this.lastSearchId = -1;
                    this.internalDialogsIsSearching = false;
                } else {
                    this.internalDialogsIsSearching = true;
                    final int i = this.lastSearchId + 1;
                    this.lastSearchId = i;
                    ShareAlert.this.searchEmptyView.showProgress(true, true);
                    DispatchQueue dispatchQueue = Utilities.searchQueue;
                    Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.Components.ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda3
                        @Override // java.lang.Runnable
                        public final void run() {
                            ShareAlert.ShareSearchAdapter.this.lambda$searchDialogs$4(str, i);
                        }
                    };
                    this.searchRunnable = runnable2;
                    dispatchQueue.postRunnable(runnable2, 300L);
                }
                ShareAlert.this.checkCurrentList(false);
            }
        }

        public /* synthetic */ void lambda$searchDialogs$4(final String str, final int i) {
            this.searchRunnable = null;
            searchDialogsInternal(str, i);
            Runnable runnable = new Runnable() { // from class: org.telegram.ui.Components.ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    ShareAlert.ShareSearchAdapter.this.lambda$searchDialogs$3(i, str);
                }
            };
            this.searchRunnable2 = runnable;
            AndroidUtilities.runOnUIThread(runnable);
        }

        public /* synthetic */ void lambda$searchDialogs$3(int i, String str) {
            this.searchRunnable2 = null;
            if (i != this.lastSearchId) {
                return;
            }
            this.searchAdapterHelper.queryServerSearch(str, true, true, true, true, false, 0L, false, 0, i);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            this.itemsCount = 0;
            this.hintsCell = -1;
            this.resentTitleCell = -1;
            this.recentDialogsStartRow = -1;
            this.lastFilledItem = -1;
            if (TextUtils.isEmpty(this.lastSearchText)) {
                int i = this.itemsCount;
                int i2 = i + 1;
                this.itemsCount = i2;
                this.firstEmptyViewCell = i;
                this.itemsCount = i2 + 1;
                this.hintsCell = i2;
                if (ShareAlert.this.recentSearchObjects.size() > 0) {
                    int i3 = this.itemsCount;
                    int i4 = i3 + 1;
                    this.itemsCount = i4;
                    this.resentTitleCell = i3;
                    this.recentDialogsStartRow = i4;
                    this.itemsCount = i4 + ShareAlert.this.recentSearchObjects.size();
                }
                int i5 = this.itemsCount;
                int i6 = i5 + 1;
                this.itemsCount = i6;
                this.lastFilledItem = i5;
                this.lastItemCont = i6;
                return i6;
            }
            int i7 = this.itemsCount;
            int i8 = i7 + 1;
            this.itemsCount = i8;
            this.firstEmptyViewCell = i7;
            int size = i8 + this.searchResult.size() + this.searchAdapterHelper.getLocalServerSearch().size();
            this.itemsCount = size;
            if (size == 1) {
                this.firstEmptyViewCell = -1;
                this.itemsCount = 0;
                this.lastItemCont = 0;
                return 0;
            }
            int i9 = size + 1;
            this.itemsCount = i9;
            this.lastFilledItem = size;
            this.lastItemCont = i9;
            return i9;
        }

        public TLRPC$Dialog getItem(int i) {
            int i2 = this.recentDialogsStartRow;
            if (i >= i2 && i2 >= 0) {
                int i3 = i - i2;
                if (i3 < 0 || i3 >= ShareAlert.this.recentSearchObjects.size()) {
                    return null;
                }
                TLObject tLObject = ((DialogsSearchAdapter.RecentSearchObject) ShareAlert.this.recentSearchObjects.get(i3)).object;
                TLRPC$TL_dialog tLRPC$TL_dialog = new TLRPC$TL_dialog();
                if (tLObject instanceof TLRPC$User) {
                    tLRPC$TL_dialog.f1608id = ((TLRPC$User) tLObject).f1749id;
                } else {
                    tLRPC$TL_dialog.f1608id = -((TLRPC$Chat) tLObject).f1602id;
                }
                return tLRPC$TL_dialog;
            }
            int i4 = i - 1;
            if (i4 < 0) {
                return null;
            }
            if (i4 < this.searchResult.size()) {
                return ((DialogSearchResult) this.searchResult.get(i4)).dialog;
            }
            int size = i4 - this.searchResult.size();
            ArrayList<TLObject> localServerSearch = this.searchAdapterHelper.getLocalServerSearch();
            if (size < localServerSearch.size()) {
                TLObject tLObject2 = localServerSearch.get(size);
                TLRPC$TL_dialog tLRPC$TL_dialog2 = new TLRPC$TL_dialog();
                if (tLObject2 instanceof TLRPC$User) {
                    tLRPC$TL_dialog2.f1608id = ((TLRPC$User) tLObject2).f1749id;
                } else {
                    tLRPC$TL_dialog2.f1608id = -((TLRPC$Chat) tLObject2).f1602id;
                }
                return tLRPC$TL_dialog2;
            }
            return null;
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            return (viewHolder.getItemViewType() == 1 || viewHolder.getItemViewType() == 4) ? false : true;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r5v3, types: [org.telegram.ui.Components.ShareAlert$ShareSearchAdapter$2, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup, org.telegram.ui.Components.RecyclerListView] */
        /* JADX WARN: Type inference failed for: r5v4, types: [org.telegram.ui.Cells.GraySectionCell, android.widget.FrameLayout] */
        /* JADX WARN: Type inference failed for: r5v5, types: [org.telegram.ui.Components.ShareAlert$ShareSearchAdapter$5] */
        /* JADX WARN: Type inference failed for: r5v6, types: [android.view.View] */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            ShareDialogCell shareDialogCell;
            if (i == 0) {
                ShareDialogCell shareDialogCell2 = new ShareDialogCell(this.context, ShareAlert.this.darkTheme ? 1 : 0, ShareAlert.this.resourcesProvider);
                shareDialogCell2.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m104dp(100)));
                shareDialogCell = shareDialogCell2;
            } else if (i == 2) {
                ?? r5 = new RecyclerListView(this, this.context, ShareAlert.this.resourcesProvider) { // from class: org.telegram.ui.Components.ShareAlert.ShareSearchAdapter.2
                    @Override // org.telegram.p043ui.Components.RecyclerListView, androidx.recyclerview.widget.RecyclerView, android.view.ViewGroup
                    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
                        if (getParent() != null && getParent().getParent() != null) {
                            ViewParent parent = getParent().getParent();
                            boolean z = true;
                            if (!canScrollHorizontally(-1) && !canScrollHorizontally(1)) {
                                z = false;
                            }
                            parent.requestDisallowInterceptTouchEvent(z);
                        }
                        return super.onInterceptTouchEvent(motionEvent);
                    }
                };
                r5.setItemAnimator(null);
                r5.setLayoutAnimation(null);
                LinearLayoutManager linearLayoutManager = new LinearLayoutManager(this, this.context) { // from class: org.telegram.ui.Components.ShareAlert.ShareSearchAdapter.3
                    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
                    public boolean supportsPredictiveItemAnimations() {
                        return false;
                    }
                };
                linearLayoutManager.setOrientation(0);
                r5.setLayoutManager(linearLayoutManager);
                DialogsSearchAdapter.CategoryAdapterRecycler categoryAdapterRecycler = new DialogsSearchAdapter.CategoryAdapterRecycler(this.context, ((BottomSheet) ShareAlert.this).currentAccount, true) { // from class: org.telegram.ui.Components.ShareAlert.ShareSearchAdapter.4
                    {
                        ShareSearchAdapter.this = this;
                    }

                    @Override // org.telegram.p043ui.Adapters.DialogsSearchAdapter.CategoryAdapterRecycler, androidx.recyclerview.widget.RecyclerView.Adapter
                    public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i2) {
                        TLRPC$Chat tLRPC$Chat;
                        String str;
                        HintDialogCell hintDialogCell = (HintDialogCell) viewHolder.itemView;
                        if (ShareAlert.this.darkTheme) {
                            hintDialogCell.setColors(Theme.key_voipgroup_nameText, Theme.key_voipgroup_inviteMembersBackground);
                        }
                        TLRPC$TL_topPeer tLRPC$TL_topPeer = MediaDataController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).hints.get(i2);
                        TLRPC$Peer tLRPC$Peer = tLRPC$TL_topPeer.peer;
                        long j = tLRPC$Peer.user_id;
                        TLRPC$User tLRPC$User = null;
                        if (j != 0) {
                            tLRPC$User = MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).getUser(Long.valueOf(tLRPC$TL_topPeer.peer.user_id));
                            tLRPC$Chat = null;
                        } else {
                            long j2 = tLRPC$Peer.channel_id;
                            if (j2 != 0) {
                                j = -j2;
                                tLRPC$Chat = MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).getChat(Long.valueOf(tLRPC$TL_topPeer.peer.channel_id));
                            } else {
                                long j3 = tLRPC$Peer.chat_id;
                                if (j3 != 0) {
                                    j = -j3;
                                    tLRPC$Chat = MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).getChat(Long.valueOf(tLRPC$TL_topPeer.peer.chat_id));
                                } else {
                                    j = 0;
                                    tLRPC$Chat = null;
                                }
                            }
                        }
                        boolean z = j == hintDialogCell.getDialogId();
                        hintDialogCell.setTag(Long.valueOf(j));
                        if (tLRPC$User != null) {
                            str = UserObject.getFirstName(tLRPC$User);
                        } else {
                            str = tLRPC$Chat != null ? tLRPC$Chat.title : "";
                        }
                        hintDialogCell.setDialog(j, true, str);
                        hintDialogCell.setChecked(ShareAlert.this.selectedDialogs.indexOfKey(j) >= 0, z);
                    }
                };
                this.categoryAdapter = categoryAdapterRecycler;
                r5.setAdapter(categoryAdapterRecycler);
                r5.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.ShareAlert$ShareSearchAdapter$$ExternalSyntheticLambda5
                    @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
                    public final void onItemClick(View view, int i2) {
                        ShareAlert.ShareSearchAdapter.this.lambda$onCreateViewHolder$5(view, i2);
                    }
                });
                shareDialogCell = r5;
            } else if (i == 3) {
                ?? graySectionCell = new GraySectionCell(this.context, ShareAlert.this.resourcesProvider);
                graySectionCell.setTextColor(ShareAlert.this.darkTheme ? Theme.key_voipgroup_nameText : Theme.key_graySectionText);
                ShareAlert shareAlert = ShareAlert.this;
                graySectionCell.setBackgroundColor(shareAlert.getThemedColor(shareAlert.darkTheme ? Theme.key_voipgroup_searchBackground : Theme.key_graySection));
                graySectionCell.setText(LocaleController.getString("Recent", C3632R.string.Recent));
                shareDialogCell = graySectionCell;
            } else if (i != 4) {
                ?? view = new View(this.context);
                view.setLayoutParams(new RecyclerView.LayoutParams(-1, AndroidUtilities.m104dp((!ShareAlert.this.darkTheme || ShareAlert.this.linkToCopy[1] == null) ? 56 : 109)));
                shareDialogCell = view;
            } else {
                shareDialogCell = new View(this.context) { // from class: org.telegram.ui.Components.ShareAlert.ShareSearchAdapter.5
                    {
                        ShareSearchAdapter.this = this;
                    }

                    @Override // android.view.View
                    protected void onMeasure(int i2, int i3) {
                        super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(ShareAlert.this.searchLayoutManager.lastItemHeight, 1073741824));
                    }
                };
            }
            return new RecyclerListView.Holder(shareDialogCell);
        }

        public /* synthetic */ void lambda$onCreateViewHolder$5(View view, int i) {
            TLRPC$TL_dialog tLRPC$TL_dialog = new TLRPC$TL_dialog();
            TLRPC$Peer tLRPC$Peer = MediaDataController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).hints.get(i).peer;
            long j = tLRPC$Peer.user_id;
            if (j == 0) {
                long j2 = tLRPC$Peer.channel_id;
                if (j2 == 0) {
                    j2 = tLRPC$Peer.chat_id;
                    if (j2 == 0) {
                        j = 0;
                    }
                }
                j = -j2;
            }
            tLRPC$TL_dialog.f1608id = j;
            ShareAlert.this.selectDialog(null, tLRPC$TL_dialog);
            ((HintDialogCell) view).setChecked(ShareAlert.this.selectedDialogs.indexOfKey(j) >= 0, true);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            long j;
            CharSequence charSequence;
            int indexOfIgnoreCase;
            TLRPC$User user;
            int indexOfIgnoreCase2;
            if (viewHolder.getItemViewType() == 0) {
                ShareDialogCell shareDialogCell = (ShareDialogCell) viewHolder.itemView;
                String str = null;
                long j2 = 0;
                if (TextUtils.isEmpty(this.lastSearchText)) {
                    int i2 = this.recentDialogsStartRow;
                    if (i2 >= 0 && i >= i2) {
                        TLObject tLObject = ((DialogsSearchAdapter.RecentSearchObject) ShareAlert.this.recentSearchObjects.get(i - i2)).object;
                        if (tLObject instanceof TLRPC$User) {
                            TLRPC$User tLRPC$User = (TLRPC$User) tLObject;
                            j2 = tLRPC$User.f1749id;
                            str = ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name);
                        } else if (tLObject instanceof TLRPC$Chat) {
                            TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) tLObject;
                            j2 = -tLRPC$Chat.f1602id;
                            str = tLRPC$Chat.title;
                        } else if ((tLObject instanceof TLRPC$TL_encryptedChat) && (user = MessagesController.getInstance(((BottomSheet) ShareAlert.this).currentAccount).getUser(Long.valueOf(((TLRPC$TL_encryptedChat) tLObject).user_id))) != null) {
                            j2 = user.f1749id;
                            str = ContactsController.formatName(user.first_name, user.last_name);
                        }
                        String lastFoundUsername = this.searchAdapterHelper.getLastFoundUsername();
                        if (!TextUtils.isEmpty(lastFoundUsername) && str != null && (indexOfIgnoreCase2 = AndroidUtilities.indexOfIgnoreCase(str.toString(), lastFoundUsername)) != -1) {
                            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(str);
                            spannableStringBuilder.setSpan(new ForegroundColorSpanThemable(Theme.key_windowBackgroundWhiteBlueText4, ShareAlert.this.resourcesProvider), indexOfIgnoreCase2, lastFoundUsername.length() + indexOfIgnoreCase2, 33);
                            str = spannableStringBuilder;
                        }
                    }
                    shareDialogCell.setDialog((int) j2, ShareAlert.this.selectedDialogs.indexOfKey(j2) >= 0, str);
                    return;
                }
                int i3 = i - 1;
                if (i3 < this.searchResult.size()) {
                    DialogSearchResult dialogSearchResult = (DialogSearchResult) this.searchResult.get(i3);
                    j = dialogSearchResult.dialog.f1608id;
                    charSequence = dialogSearchResult.name;
                } else {
                    TLObject tLObject2 = this.searchAdapterHelper.getLocalServerSearch().get(i3 - this.searchResult.size());
                    if (tLObject2 instanceof TLRPC$User) {
                        TLRPC$User tLRPC$User2 = (TLRPC$User) tLObject2;
                        j = tLRPC$User2.f1749id;
                        charSequence = ContactsController.formatName(tLRPC$User2.first_name, tLRPC$User2.last_name);
                    } else {
                        TLRPC$Chat tLRPC$Chat2 = (TLRPC$Chat) tLObject2;
                        j = -tLRPC$Chat2.f1602id;
                        charSequence = tLRPC$Chat2.title;
                    }
                    String lastFoundUsername2 = this.searchAdapterHelper.getLastFoundUsername();
                    if (!TextUtils.isEmpty(lastFoundUsername2) && charSequence != null && (indexOfIgnoreCase = AndroidUtilities.indexOfIgnoreCase(charSequence.toString(), lastFoundUsername2)) != -1) {
                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(charSequence);
                        spannableStringBuilder2.setSpan(new ForegroundColorSpanThemable(Theme.key_windowBackgroundWhiteBlueText4, ShareAlert.this.resourcesProvider), indexOfIgnoreCase, lastFoundUsername2.length() + indexOfIgnoreCase, 33);
                        charSequence = spannableStringBuilder2;
                    }
                }
                shareDialogCell.setDialog(j, ShareAlert.this.selectedDialogs.indexOfKey(j) >= 0, charSequence);
            } else if (viewHolder.getItemViewType() == 2) {
                ((RecyclerListView) viewHolder.itemView).getAdapter().notifyDataSetChanged();
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == this.lastFilledItem) {
                return 4;
            }
            if (i == this.firstEmptyViewCell) {
                return 1;
            }
            if (i == this.hintsCell) {
                return 2;
            }
            return i == this.resentTitleCell ? 3 : 0;
        }

        public int getSpanSize(int i, int i2) {
            if (i2 == this.hintsCell || i2 == this.resentTitleCell || i2 == this.firstEmptyViewCell || i2 == this.lastFilledItem) {
                return i;
            }
            return 1;
        }
    }

    public void checkCurrentList(boolean z) {
        boolean z2 = true;
        if (!TextUtils.isEmpty(this.searchView.searchEditText.getText()) || ((this.keyboardVisible && this.searchView.searchEditText.hasFocus()) || this.searchWasVisibleBeforeTopics)) {
            this.updateSearchAdapter = true;
            if (this.selectedTopicDialog == null) {
                AndroidUtilities.updateViewVisibilityAnimated(this.gridView, false, 0.98f, true);
                AndroidUtilities.updateViewVisibilityAnimated(this.searchGridView, true);
            }
        } else {
            if (this.selectedTopicDialog == null) {
                AndroidUtilities.updateViewVisibilityAnimated(this.gridView, true, 0.98f, true);
                AndroidUtilities.updateViewVisibilityAnimated(this.searchGridView, false);
            }
            z2 = false;
        }
        if (this.searchIsVisible != z2 || z) {
            this.searchIsVisible = z2;
            this.searchAdapter.notifyDataSetChanged();
            this.listAdapter.notifyDataSetChanged();
            if (this.searchIsVisible) {
                if (this.lastOffset == Integer.MAX_VALUE) {
                    ((LinearLayoutManager) this.searchGridView.getLayoutManager()).scrollToPositionWithOffset(0, -this.searchGridView.getPaddingTop());
                } else {
                    ((LinearLayoutManager) this.searchGridView.getLayoutManager()).scrollToPositionWithOffset(0, this.lastOffset - this.searchGridView.getPaddingTop());
                }
                this.searchAdapter.searchDialogs(this.searchView.searchEditText.getText().toString());
            } else if (this.lastOffset == Integer.MAX_VALUE) {
                this.layoutManager.scrollToPositionWithOffset(0, 0);
            } else {
                this.layoutManager.scrollToPositionWithOffset(0, 0);
            }
        }
    }
}
