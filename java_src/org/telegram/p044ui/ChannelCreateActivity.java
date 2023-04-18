package org.telegram.p044ui;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Vibrator;
import android.text.Editable;
import android.text.InputFilter;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.controller.AlbumsController;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.p031ui.base.mvp.JavaMvpFragment;
import java.util.ArrayList;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.Utilities;
import org.telegram.messenger.browser.Browser;
import org.telegram.p044ui.ActionBar.ActionBarMenu;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.C3306ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.Cells.AdminedChannelCell;
import org.telegram.p044ui.Cells.HeaderCell;
import org.telegram.p044ui.Cells.LoadingCell;
import org.telegram.p044ui.Cells.RadioButtonCell;
import org.telegram.p044ui.Cells.ShadowSectionCell;
import org.telegram.p044ui.Cells.TextBlockCell;
import org.telegram.p044ui.Cells.TextInfoPrivacyCell;
import org.telegram.p044ui.ChannelCreateActivity;
import org.telegram.p044ui.Components.AvatarDrawable;
import org.telegram.p044ui.Components.BackupImageView;
import org.telegram.p044ui.Components.CircularProgressDrawable;
import org.telegram.p044ui.Components.CrossfadeDrawable;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.EditTextBoldCursor;
import org.telegram.p044ui.Components.EditTextEmoji;
import org.telegram.p044ui.Components.ImageUpdater;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.LinkActionView;
import org.telegram.p044ui.Components.LinkSpanDrawable;
import org.telegram.p044ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p044ui.Components.RLottieDrawable;
import org.telegram.p044ui.Components.RLottieImageView;
import org.telegram.p044ui.Components.RadialProgressView;
import org.telegram.p044ui.Components.SizeNotifierFrameLayout;
import org.telegram.p044ui.Components.TypefaceSpan;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$FileLocation;
import org.telegram.tgnet.TLRPC$InputFile;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_boolTrue;
import org.telegram.tgnet.TLRPC$TL_channels_checkUsername;
import org.telegram.tgnet.TLRPC$TL_channels_getAdminedPublicChannels;
import org.telegram.tgnet.TLRPC$TL_channels_updateUsername;
import org.telegram.tgnet.TLRPC$TL_chatInviteExported;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputChannelEmpty;
import org.telegram.tgnet.TLRPC$TL_messages_chats;
import org.telegram.tgnet.TLRPC$TL_messages_exportedChatInvites;
import org.telegram.tgnet.TLRPC$TL_messages_getExportedChatInvites;
import org.telegram.tgnet.TLRPC$VideoSize;
/* renamed from: org.telegram.ui.ChannelCreateActivity */
/* loaded from: classes5.dex */
public class ChannelCreateActivity extends JavaMvpFragment implements NotificationCenter.NotificationCenterDelegate, ImageUpdater.ImageUpdaterDelegate {
    private static final int[] observers = {NotificationCenter.dialogsNeedReload};
    private ArrayList<AdminedChannelCell> adminedChannelCells;
    private TextInfoPrivacyCell adminedInfoCell;
    private LinearLayout adminnedChannelsLayout;
    private boolean albumMode;
    private AlbumModeDelegate albumModeDelegate;
    private TLRPC$FileLocation avatar;
    private AnimatorSet avatarAnimation;
    private TLRPC$FileLocation avatarBig;
    private AvatarDrawable avatarDrawable;
    private RLottieImageView avatarEditor;
    private BackupImageView avatarImage;
    private View avatarOverlay;
    private RadialProgressView avatarProgressView;
    private RLottieDrawable cameraDrawable;
    private boolean canCreatePublic;
    private AlertDialog cancelDialog;
    private long chatId;
    private int checkReqId;
    private Runnable checkRunnable;
    private TextView checkTextView;
    private boolean createAfterUpload;
    private int currentStep;
    private EditTextBoldCursor descriptionTextView;
    private View doneButton;
    private CrossfadeDrawable doneButtonDrawable;
    private ValueAnimator doneButtonDrawableAnimator;
    private boolean donePressed;
    private Integer doneRequestId;
    private EditTextBoldCursor editText;
    private Runnable enableDoneLoading;
    private long featureAlbumId;
    private Boolean forcePublic;
    private HeaderCell headerCell;
    private HeaderCell headerCell2;
    private TextView helpTextView;
    private ImageUpdater imageUpdater;
    private TLRPC$VideoSize inputEmojiMarkup;
    private TLRPC$InputFile inputPhoto;
    private TLRPC$InputFile inputVideo;
    private String inputVideoPath;
    private TLRPC$TL_chatInviteExported invite;
    private boolean isGroup;
    private boolean isPrivate;
    private String lastCheckName;
    private boolean lastNameAvailable;
    private LinearLayout linearLayout;
    private LinearLayout linearLayout2;
    private LinearLayout linkContainer;
    private LoadingCell loadingAdminedCell;
    private boolean loadingAdminedChannels;
    private boolean loadingInvite;
    private EditTextEmoji nameTextView;
    private String nameToSet;
    private Utilities.Callback2<BaseFragment, Long> onFinishListener;
    private LinkActionView permanentLinkView;
    private LinearLayout privateContainer;
    private LinearLayout publicContainer;
    private RadioButtonCell radioButtonCell1;
    private RadioButtonCell radioButtonCell2;
    private ShadowSectionCell sectionCell;
    private TextInfoPrivacyCell typeInfoCell;
    private double videoTimestamp;

    /* renamed from: org.telegram.ui.ChannelCreateActivity$AlbumModeDelegate */
    /* loaded from: classes5.dex */
    public interface AlbumModeDelegate {
        void didAlbumCreated(long j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$createView$7(View view, MotionEvent motionEvent) {
        return true;
    }

    @Override // org.telegram.p044ui.Components.ImageUpdater.ImageUpdaterDelegate
    public /* synthetic */ boolean canFinishFragment() {
        return ImageUpdater.ImageUpdaterDelegate.CC.$default$canFinishFragment(this);
    }

    @Override // org.telegram.p044ui.Components.ImageUpdater.ImageUpdaterDelegate
    public /* synthetic */ void didUploadFailed() {
        ImageUpdater.ImageUpdaterDelegate.CC.$default$didUploadFailed(this);
    }

    public static ChannelCreateActivity newInstanceInAlbumMode(final Callbacks$Callback1<Long> callbacks$Callback1) {
        Bundle bundle = new Bundle();
        bundle.putInt("step", 0);
        final ChannelCreateActivity channelCreateActivity = new ChannelCreateActivity(bundle);
        channelCreateActivity.albumMode = true;
        channelCreateActivity.albumModeDelegate = new AlbumModeDelegate() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda28
            @Override // org.telegram.p044ui.ChannelCreateActivity.AlbumModeDelegate
            public final void didAlbumCreated(long j) {
                ChannelCreateActivity.lambda$newInstanceInAlbumMode$1(ChannelCreateActivity.this, callbacks$Callback1, j);
            }
        };
        return channelCreateActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$newInstanceInAlbumMode$0(Callbacks$Callback1 callbacks$Callback1, long j) {
        callbacks$Callback1.invoke(Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$newInstanceInAlbumMode$1(ChannelCreateActivity channelCreateActivity, final Callbacks$Callback1 callbacks$Callback1, final long j) {
        AlbumsController.getInstance(channelCreateActivity.currentAccount).addAlbum(j, new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda11
            @Override // java.lang.Runnable
            public final void run() {
                ChannelCreateActivity.lambda$newInstanceInAlbumMode$0(Callbacks$Callback1.this, j);
            }
        });
    }

    private void checkAlbumCreated() {
        if (this.featureAlbumId == 0 || !getMessagesController().hasDialog(this.featureAlbumId)) {
            return;
        }
        long j = this.featureAlbumId;
        this.featureAlbumId = 0L;
        finishFragment(false);
        this.albumModeDelegate.didAlbumCreated(j);
    }

    public ChannelCreateActivity(Bundle bundle) {
        super(bundle);
        this.adminedChannelCells = new ArrayList<>();
        this.canCreatePublic = true;
        this.enableDoneLoading = new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                ChannelCreateActivity.this.lambda$new$5();
            }
        };
        this.currentStep = bundle.getInt("step", 0);
        if (bundle.containsKey("forcePublic")) {
            this.forcePublic = Boolean.valueOf(bundle.getBoolean("forcePublic", false));
        }
        int i = this.currentStep;
        if (i == 0) {
            this.avatarDrawable = new AvatarDrawable();
            this.imageUpdater = new ImageUpdater(true, 1, true);
            TLRPC$TL_channels_checkUsername tLRPC$TL_channels_checkUsername = new TLRPC$TL_channels_checkUsername();
            tLRPC$TL_channels_checkUsername.username = IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE;
            tLRPC$TL_channels_checkUsername.channel = new TLRPC$TL_inputChannelEmpty();
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_channels_checkUsername, new RequestDelegate() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda22
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    ChannelCreateActivity.this.lambda$new$3(tLObject, tLRPC$TL_error);
                }
            });
            return;
        }
        if (i == 1) {
            boolean z = bundle.getBoolean("canCreatePublic", true);
            this.canCreatePublic = z;
            this.isPrivate = !z;
            if (!z) {
                loadAdminedChannels();
            }
        }
        this.chatId = bundle.getLong("chat_id", 0L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$2(TLRPC$TL_error tLRPC$TL_error) {
        this.canCreatePublic = tLRPC$TL_error == null || !tLRPC$TL_error.text.equals("CHANNELS_ADMIN_PUBLIC_TOO_MUCH");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$3(TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda20
            @Override // java.lang.Runnable
            public final void run() {
                ChannelCreateActivity.this.lambda$new$2(tLRPC$TL_error);
            }
        });
    }

    public void setOnFinishListener(Utilities.Callback2<BaseFragment, Long> callback2) {
        this.onFinishListener = callback2;
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        NotificationCenter.getInstance(this.currentAccount).addObservers(this, observers);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.chatDidCreated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.chatDidFailCreate);
        if (this.currentStep == 1) {
            generateLink();
        }
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.parentFragment = this;
            imageUpdater.setDelegate(this);
        }
        return super.onFragmentCreate();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        if (this.doneRequestId != null) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.doneRequestId.intValue(), true);
            this.doneRequestId = null;
        }
        NotificationCenter.getInstance(this.currentAccount).removeObservers(this, observers);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.chatDidCreated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.chatDidFailCreate);
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.clear();
        }
        AndroidUtilities.removeAdjustResize(getParentActivity(), this.classGuid);
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onDestroy();
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onResume();
        }
        AndroidUtilities.requestAdjustResize(getParentActivity(), this.classGuid);
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onResume();
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onPause();
        }
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onPause();
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void dismissCurrentDialog() {
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater == null || !imageUpdater.dismissCurrentDialog(this.visibleDialog)) {
            super.dismissCurrentDialog();
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean dismissDialogOnPause(Dialog dialog) {
        ImageUpdater imageUpdater = this.imageUpdater;
        return (imageUpdater == null || imageUpdater.dismissDialogOnPause(dialog)) && super.dismissDialogOnPause(dialog);
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onRequestPermissionsResultFragment(int i, String[] strArr, int[] iArr) {
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onRequestPermissionsResultFragment(i, strArr, iArr);
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji == null || !editTextEmoji.isPopupShowing()) {
            return true;
        }
        this.nameTextView.hidePopup(true);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showDoneCancelDialog() {
        if (this.cancelDialog != null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString("StopLoadingTitle", C3242R.string.StopLoadingTitle));
        builder.setMessage(LocaleController.getString("StopLoading", C3242R.string.StopLoading));
        builder.setPositiveButton(LocaleController.getString("WaitMore", C3242R.string.WaitMore), null);
        builder.setNegativeButton(LocaleController.getString("Stop", C3242R.string.Stop), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda1
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                ChannelCreateActivity.this.lambda$showDoneCancelDialog$4(dialogInterface, i);
            }
        });
        this.cancelDialog = builder.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showDoneCancelDialog$4(DialogInterface dialogInterface, int i) {
        this.donePressed = false;
        this.createAfterUpload = false;
        if (this.doneRequestId != null) {
            ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.doneRequestId.intValue(), true);
            this.doneRequestId = null;
        }
        updateDoneProgress(false);
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$5() {
        updateDoneProgress(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDoneProgress(boolean z) {
        if (!z) {
            AndroidUtilities.cancelRunOnUIThread(this.enableDoneLoading);
        }
        if (this.doneButtonDrawable != null) {
            ValueAnimator valueAnimator = this.doneButtonDrawableAnimator;
            if (valueAnimator != null) {
                valueAnimator.cancel();
            }
            float[] fArr = new float[2];
            fArr[0] = this.doneButtonDrawable.getProgress();
            fArr[1] = z ? 1.0f : 0.0f;
            ValueAnimator ofFloat = ValueAnimator.ofFloat(fArr);
            this.doneButtonDrawableAnimator = ofFloat;
            ofFloat.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda0
                @Override // android.animation.ValueAnimator.AnimatorUpdateListener
                public final void onAnimationUpdate(ValueAnimator valueAnimator2) {
                    ChannelCreateActivity.this.lambda$updateDoneProgress$6(valueAnimator2);
                }
            });
            this.doneButtonDrawableAnimator.setDuration(Math.abs(this.doneButtonDrawable.getProgress() - (z ? 1.0f : 0.0f)) * 200.0f);
            this.doneButtonDrawableAnimator.setInterpolator(CubicBezierInterpolator.DEFAULT);
            this.doneButtonDrawableAnimator.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$updateDoneProgress$6(ValueAnimator valueAnimator) {
        this.doneButtonDrawable.setProgress(((Float) valueAnimator.getAnimatedValue()).floatValue());
        this.doneButtonDrawable.invalidateSelf();
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public View createView(Context context) {
        int i;
        String str;
        int i2;
        String str2;
        super.createView(context);
        EditTextEmoji editTextEmoji = this.nameTextView;
        if (editTextEmoji != null) {
            editTextEmoji.onDestroy();
        }
        this.actionBar.setBackButtonImage(C3242R.C3244drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        this.actionBar.setActionBarMenuOnItemClick(new C37181());
        ActionBarMenu createMenu = this.actionBar.createMenu();
        Drawable mutate = context.getResources().getDrawable(C3242R.C3244drawable.ic_ab_done).mutate();
        mutate.setColorFilter(new PorterDuffColorFilter(Theme.getColor("actionBarDefaultIcon"), PorterDuff.Mode.MULTIPLY));
        CrossfadeDrawable crossfadeDrawable = new CrossfadeDrawable(mutate, new CircularProgressDrawable(Theme.getColor("actionBarDefaultIcon")));
        this.doneButtonDrawable = crossfadeDrawable;
        this.doneButton = createMenu.addItemWithWidth(1, crossfadeDrawable, AndroidUtilities.m50dp(56), LocaleController.getString("Done", C3242R.string.Done));
        int i3 = this.currentStep;
        if (i3 == 0) {
            if (this.albumMode) {
                this.actionBar.setTitle(LocaleController.getInternalString(C3242R.string.cloud_albums_intro_button));
            } else {
                this.actionBar.setTitle(LocaleController.getString("NewChannel", C3242R.string.NewChannel));
            }
            SizeNotifierFrameLayout sizeNotifierFrameLayout = new SizeNotifierFrameLayout(context) { // from class: org.telegram.ui.ChannelCreateActivity.2
                private boolean ignoreLayout;

                @Override // android.widget.FrameLayout, android.view.View
                protected void onMeasure(int i4, int i5) {
                    int size = View.MeasureSpec.getSize(i4);
                    int size2 = View.MeasureSpec.getSize(i5);
                    setMeasuredDimension(size, size2);
                    int paddingTop = size2 - getPaddingTop();
                    measureChildWithMargins(((BaseFragment) ChannelCreateActivity.this).actionBar, i4, 0, i5, 0);
                    if (measureKeyboardHeight() > AndroidUtilities.m50dp(20)) {
                        this.ignoreLayout = true;
                        ChannelCreateActivity.this.nameTextView.hideEmojiView();
                        this.ignoreLayout = false;
                    }
                    int childCount = getChildCount();
                    for (int i6 = 0; i6 < childCount; i6++) {
                        View childAt = getChildAt(i6);
                        if (childAt != null && childAt.getVisibility() != 8 && childAt != ((BaseFragment) ChannelCreateActivity.this).actionBar) {
                            if (ChannelCreateActivity.this.nameTextView != null && ChannelCreateActivity.this.nameTextView.isPopupView(childAt)) {
                                if (AndroidUtilities.isInMultiwindow || AndroidUtilities.isTablet()) {
                                    if (AndroidUtilities.isTablet()) {
                                        childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(Math.min(AndroidUtilities.m50dp(AndroidUtilities.isTablet() ? 200 : 320), (paddingTop - AndroidUtilities.statusBarHeight) + getPaddingTop()), 1073741824));
                                    } else {
                                        childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec((paddingTop - AndroidUtilities.statusBarHeight) + getPaddingTop(), 1073741824));
                                    }
                                } else {
                                    childAt.measure(View.MeasureSpec.makeMeasureSpec(size, 1073741824), View.MeasureSpec.makeMeasureSpec(childAt.getLayoutParams().height, 1073741824));
                                }
                            } else {
                                measureChildWithMargins(childAt, i4, 0, i5, 0);
                            }
                        }
                    }
                }

                /* JADX INFO: Access modifiers changed from: protected */
                /* JADX WARN: Removed duplicated region for block: B:28:0x0072  */
                /* JADX WARN: Removed duplicated region for block: B:35:0x008c  */
                /* JADX WARN: Removed duplicated region for block: B:39:0x00a1  */
                /* JADX WARN: Removed duplicated region for block: B:43:0x00b3  */
                /* JADX WARN: Removed duplicated region for block: B:44:0x00bc  */
                @Override // org.telegram.p044ui.Components.SizeNotifierFrameLayout, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public void onLayout(boolean r11, int r12, int r13, int r14, int r15) {
                    /*
                        r10 = this;
                        int r11 = r10.getChildCount()
                        int r0 = r10.measureKeyboardHeight()
                        r1 = 20
                        int r1 = org.telegram.messenger.AndroidUtilities.m50dp(r1)
                        r2 = 0
                        if (r0 > r1) goto L26
                        boolean r1 = org.telegram.messenger.AndroidUtilities.isInMultiwindow
                        if (r1 != 0) goto L26
                        boolean r1 = org.telegram.messenger.AndroidUtilities.isTablet()
                        if (r1 != 0) goto L26
                        org.telegram.ui.ChannelCreateActivity r1 = org.telegram.p044ui.ChannelCreateActivity.this
                        org.telegram.ui.Components.EditTextEmoji r1 = org.telegram.p044ui.ChannelCreateActivity.access$300(r1)
                        int r1 = r1.getEmojiPadding()
                        goto L27
                    L26:
                        r1 = r2
                    L27:
                        r10.setBottomClip(r1)
                    L2a:
                        if (r2 >= r11) goto Lcf
                        android.view.View r3 = r10.getChildAt(r2)
                        int r4 = r3.getVisibility()
                        r5 = 8
                        if (r4 != r5) goto L3a
                        goto Lcb
                    L3a:
                        android.view.ViewGroup$LayoutParams r4 = r3.getLayoutParams()
                        android.widget.FrameLayout$LayoutParams r4 = (android.widget.FrameLayout.LayoutParams) r4
                        int r5 = r3.getMeasuredWidth()
                        int r6 = r3.getMeasuredHeight()
                        int r7 = r4.gravity
                        r8 = -1
                        if (r7 != r8) goto L4f
                        r7 = 51
                    L4f:
                        r8 = r7 & 7
                        r7 = r7 & 112(0x70, float:1.57E-43)
                        r8 = r8 & 7
                        r9 = 1
                        if (r8 == r9) goto L63
                        r9 = 5
                        if (r8 == r9) goto L5e
                        int r8 = r4.leftMargin
                        goto L6e
                    L5e:
                        int r8 = r14 - r5
                        int r9 = r4.rightMargin
                        goto L6d
                    L63:
                        int r8 = r14 - r12
                        int r8 = r8 - r5
                        int r8 = r8 / 2
                        int r9 = r4.leftMargin
                        int r8 = r8 + r9
                        int r9 = r4.rightMargin
                    L6d:
                        int r8 = r8 - r9
                    L6e:
                        r9 = 16
                        if (r7 == r9) goto L8c
                        r9 = 48
                        if (r7 == r9) goto L84
                        r9 = 80
                        if (r7 == r9) goto L7d
                        int r4 = r4.topMargin
                        goto L99
                    L7d:
                        int r7 = r15 - r1
                        int r7 = r7 - r13
                        int r7 = r7 - r6
                        int r4 = r4.bottomMargin
                        goto L97
                    L84:
                        int r4 = r4.topMargin
                        int r7 = r10.getPaddingTop()
                        int r4 = r4 + r7
                        goto L99
                    L8c:
                        int r7 = r15 - r1
                        int r7 = r7 - r13
                        int r7 = r7 - r6
                        int r7 = r7 / 2
                        int r9 = r4.topMargin
                        int r7 = r7 + r9
                        int r4 = r4.bottomMargin
                    L97:
                        int r4 = r7 - r4
                    L99:
                        org.telegram.ui.ChannelCreateActivity r7 = org.telegram.p044ui.ChannelCreateActivity.this
                        org.telegram.ui.Components.EditTextEmoji r7 = org.telegram.p044ui.ChannelCreateActivity.access$300(r7)
                        if (r7 == 0) goto Lc6
                        org.telegram.ui.ChannelCreateActivity r7 = org.telegram.p044ui.ChannelCreateActivity.this
                        org.telegram.ui.Components.EditTextEmoji r7 = org.telegram.p044ui.ChannelCreateActivity.access$300(r7)
                        boolean r7 = r7.isPopupView(r3)
                        if (r7 == 0) goto Lc6
                        boolean r4 = org.telegram.messenger.AndroidUtilities.isTablet()
                        if (r4 == 0) goto Lbc
                        int r4 = r10.getMeasuredHeight()
                        int r7 = r3.getMeasuredHeight()
                        goto Lc5
                    Lbc:
                        int r4 = r10.getMeasuredHeight()
                        int r4 = r4 + r0
                        int r7 = r3.getMeasuredHeight()
                    Lc5:
                        int r4 = r4 - r7
                    Lc6:
                        int r5 = r5 + r8
                        int r6 = r6 + r4
                        r3.layout(r8, r4, r5, r6)
                    Lcb:
                        int r2 = r2 + 1
                        goto L2a
                    Lcf:
                        r10.notifyHeightChanged()
                        return
                    */
                    throw new UnsupportedOperationException("Method not decompiled: org.telegram.p044ui.ChannelCreateActivity.C37202.onLayout(boolean, int, int, int, int):void");
                }

                @Override // android.view.View, android.view.ViewParent
                public void requestLayout() {
                    if (this.ignoreLayout) {
                        return;
                    }
                    super.requestLayout();
                }
            };
            sizeNotifierFrameLayout.setOnTouchListener(ChannelCreateActivity$$ExternalSyntheticLambda8.INSTANCE);
            this.fragmentView = sizeNotifierFrameLayout;
            sizeNotifierFrameLayout.setTag("windowBackgroundWhite");
            this.fragmentView.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            LinearLayout linearLayout = new LinearLayout(context);
            this.linearLayout = linearLayout;
            linearLayout.setOrientation(1);
            sizeNotifierFrameLayout.addView(this.linearLayout, new FrameLayout.LayoutParams(-1, -2));
            FrameLayout frameLayout = new FrameLayout(context);
            this.linearLayout.addView(frameLayout, LayoutHelper.createLinear(-1, -2));
            BackupImageView backupImageView = new BackupImageView(context) { // from class: org.telegram.ui.ChannelCreateActivity.3
                @Override // android.view.View
                public void invalidate() {
                    if (ChannelCreateActivity.this.avatarOverlay != null) {
                        ChannelCreateActivity.this.avatarOverlay.invalidate();
                    }
                    super.invalidate();
                }

                @Override // android.view.View
                public void invalidate(int i4, int i5, int i6, int i7) {
                    if (ChannelCreateActivity.this.avatarOverlay != null) {
                        ChannelCreateActivity.this.avatarOverlay.invalidate();
                    }
                    super.invalidate(i4, i5, i6, i7);
                }
            };
            this.avatarImage = backupImageView;
            backupImageView.setRoundRadius(AndroidUtilities.m50dp(32));
            this.avatarDrawable.setInfo(5L, null, null);
            this.avatarImage.setImageDrawable(this.avatarDrawable);
            BackupImageView backupImageView2 = this.avatarImage;
            boolean z = LocaleController.isRTL;
            frameLayout.addView(backupImageView2, LayoutHelper.createFrame(64, 64, (z ? 5 : 3) | 48, z ? 0 : 16, 12, z ? 16 : 0, 12));
            final Paint paint = new Paint(1);
            paint.setColor(1426063360);
            View view = new View(context) { // from class: org.telegram.ui.ChannelCreateActivity.4
                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    if (ChannelCreateActivity.this.avatarImage == null || !ChannelCreateActivity.this.avatarImage.getImageReceiver().hasNotThumb()) {
                        return;
                    }
                    paint.setAlpha((int) (ChannelCreateActivity.this.avatarImage.getImageReceiver().getCurrentAlpha() * 85.0f * ChannelCreateActivity.this.avatarProgressView.getAlpha()));
                    canvas.drawCircle(getMeasuredWidth() / 2.0f, getMeasuredHeight() / 2.0f, getMeasuredWidth() / 2.0f, paint);
                }
            };
            this.avatarOverlay = view;
            view.setContentDescription(LocaleController.getString("ChatSetPhotoOrVideo", C3242R.string.ChatSetPhotoOrVideo));
            View view2 = this.avatarOverlay;
            boolean z2 = LocaleController.isRTL;
            frameLayout.addView(view2, LayoutHelper.createFrame(64, 64, (z2 ? 5 : 3) | 48, z2 ? 0 : 16, 12, z2 ? 16 : 0, 12));
            this.avatarOverlay.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    ChannelCreateActivity.this.lambda$createView$10(view3);
                }
            });
            int i4 = C3242R.raw.camera;
            this.cameraDrawable = new RLottieDrawable(i4, "" + i4, AndroidUtilities.m50dp(60), AndroidUtilities.m50dp(60), false, null);
            RLottieImageView rLottieImageView = new RLottieImageView(context) { // from class: org.telegram.ui.ChannelCreateActivity.5
                @Override // android.view.View
                public void invalidate(int i5, int i6, int i7, int i8) {
                    super.invalidate(i5, i6, i7, i8);
                    ChannelCreateActivity.this.avatarOverlay.invalidate();
                }

                @Override // android.view.View
                public void invalidate() {
                    super.invalidate();
                    ChannelCreateActivity.this.avatarOverlay.invalidate();
                }
            };
            this.avatarEditor = rLottieImageView;
            rLottieImageView.setScaleType(ImageView.ScaleType.CENTER);
            this.avatarEditor.setAnimation(this.cameraDrawable);
            this.avatarEditor.setEnabled(false);
            this.avatarEditor.setClickable(false);
            this.avatarEditor.setPadding(AndroidUtilities.m50dp(0), 0, 0, AndroidUtilities.m50dp(1));
            RLottieImageView rLottieImageView2 = this.avatarEditor;
            boolean z3 = LocaleController.isRTL;
            frameLayout.addView(rLottieImageView2, LayoutHelper.createFrame(64, 64, (z3 ? 5 : 3) | 48, z3 ? 0 : 15, 12, z3 ? 15 : 0, 12));
            RadialProgressView radialProgressView = new RadialProgressView(context) { // from class: org.telegram.ui.ChannelCreateActivity.6
                @Override // org.telegram.p044ui.Components.RadialProgressView, android.view.View
                public void setAlpha(float f) {
                    super.setAlpha(f);
                    ChannelCreateActivity.this.avatarOverlay.invalidate();
                }
            };
            this.avatarProgressView = radialProgressView;
            radialProgressView.setSize(AndroidUtilities.m50dp(30));
            this.avatarProgressView.setProgressColor(-1);
            this.avatarProgressView.setNoProgress(false);
            RadialProgressView radialProgressView2 = this.avatarProgressView;
            boolean z4 = LocaleController.isRTL;
            frameLayout.addView(radialProgressView2, LayoutHelper.createFrame(64, 64, (z4 ? 5 : 3) | 48, z4 ? 0 : 16, 12, z4 ? 16 : 0, 12));
            showAvatarProgress(false, false);
            EditTextEmoji editTextEmoji2 = new EditTextEmoji(context, sizeNotifierFrameLayout, this, 0, false);
            this.nameTextView = editTextEmoji2;
            if (this.albumMode) {
                editTextEmoji2.setHint(LocaleController.getInternalString(C3242R.string.cloud_albums_name_hint));
            } else {
                editTextEmoji2.setHint(LocaleController.getString("EnterChannelName", C3242R.string.EnterChannelName));
            }
            String str3 = this.nameToSet;
            if (str3 != null) {
                this.nameTextView.setText(str3);
                this.nameToSet = null;
            }
            this.nameTextView.setFilters(new InputFilter[]{new InputFilter.LengthFilter(100)});
            this.nameTextView.getEditText().setSingleLine(true);
            this.nameTextView.getEditText().setImeOptions(5);
            this.nameTextView.getEditText().setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda9
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView, int i5, KeyEvent keyEvent) {
                    boolean lambda$createView$11;
                    lambda$createView$11 = ChannelCreateActivity.this.lambda$createView$11(textView, i5, keyEvent);
                    return lambda$createView$11;
                }
            });
            EditTextEmoji editTextEmoji3 = this.nameTextView;
            boolean z5 = LocaleController.isRTL;
            frameLayout.addView(editTextEmoji3, LayoutHelper.createFrame(-1, -2, 16, z5 ? 5 : 96, 0, z5 ? 96 : 5, 0));
            EditTextBoldCursor editTextBoldCursor = new EditTextBoldCursor(context);
            this.descriptionTextView = editTextBoldCursor;
            editTextBoldCursor.setTextSize(1, 18.0f);
            this.descriptionTextView.setHintTextColor(Theme.getColor("windowBackgroundWhiteHintText"));
            this.descriptionTextView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            this.descriptionTextView.setBackgroundDrawable(null);
            this.descriptionTextView.setLineColors(getThemedColor("windowBackgroundWhiteInputField"), getThemedColor("windowBackgroundWhiteInputFieldActivated"), getThemedColor("windowBackgroundWhiteRedText3"));
            this.descriptionTextView.setPadding(0, 0, 0, AndroidUtilities.m50dp(6));
            this.descriptionTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            this.descriptionTextView.setInputType(180225);
            this.descriptionTextView.setImeOptions(6);
            this.descriptionTextView.setFilters(new InputFilter[]{new InputFilter.LengthFilter(120)});
            this.descriptionTextView.setHint(LocaleController.getString("DescriptionPlaceholder", C3242R.string.DescriptionPlaceholder));
            this.descriptionTextView.setCursorColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            this.descriptionTextView.setCursorSize(AndroidUtilities.m50dp(20));
            this.descriptionTextView.setCursorWidth(1.5f);
            this.linearLayout.addView(this.descriptionTextView, LayoutHelper.createLinear(-1, -2, 24, 18, 24, 0));
            this.descriptionTextView.setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda10
                @Override // android.widget.TextView.OnEditorActionListener
                public final boolean onEditorAction(TextView textView, int i5, KeyEvent keyEvent) {
                    boolean lambda$createView$12;
                    lambda$createView$12 = ChannelCreateActivity.this.lambda$createView$12(textView, i5, keyEvent);
                    return lambda$createView$12;
                }
            });
            this.descriptionTextView.addTextChangedListener(new TextWatcher(this) { // from class: org.telegram.ui.ChannelCreateActivity.7
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                }
            });
            TextView textView = new TextView(context);
            this.helpTextView = textView;
            textView.setTextSize(1, 15.0f);
            this.helpTextView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText8"));
            this.helpTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            this.helpTextView.setText(LocaleController.getString("DescriptionInfo", C3242R.string.DescriptionInfo));
            this.linearLayout.addView(this.helpTextView, LayoutHelper.createLinear(-2, -2, LocaleController.isRTL ? 5 : 3, 24, 10, 24, 20));
            if (this.albumMode) {
                this.linearLayout.removeView(this.descriptionTextView);
                this.linearLayout.removeView(this.helpTextView);
            }
        } else if (i3 == 1) {
            ScrollView scrollView = new ScrollView(context);
            this.fragmentView = scrollView;
            ScrollView scrollView2 = scrollView;
            scrollView2.setFillViewport(true);
            LinearLayout linearLayout2 = new LinearLayout(context);
            this.linearLayout = linearLayout2;
            linearLayout2.setOrientation(1);
            scrollView2.addView(this.linearLayout, new FrameLayout.LayoutParams(-1, -2));
            TLRPC$Chat chat = getMessagesController().getChat(Long.valueOf(this.chatId));
            boolean z6 = chat != null && (!ChatObject.isChannel(chat) || ChatObject.isMegagroup(chat));
            this.isGroup = z6;
            C3306ActionBar c3306ActionBar = this.actionBar;
            if (z6) {
                i = C3242R.string.GroupSettingsTitle;
                str = "GroupSettingsTitle";
            } else {
                i = C3242R.string.ChannelSettingsTitle;
                str = "ChannelSettingsTitle";
            }
            c3306ActionBar.setTitle(LocaleController.getString(str, i));
            this.fragmentView.setTag("windowBackgroundGray");
            this.fragmentView.setBackgroundColor(Theme.getColor("windowBackgroundGray"));
            HeaderCell headerCell = new HeaderCell(context, 23);
            this.headerCell2 = headerCell;
            headerCell.setHeight(46);
            this.headerCell2.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            HeaderCell headerCell2 = this.headerCell2;
            if (this.isGroup) {
                i2 = C3242R.string.GroupTypeHeader;
                str2 = "GroupTypeHeader";
            } else {
                i2 = C3242R.string.ChannelTypeHeader;
                str2 = "ChannelTypeHeader";
            }
            headerCell2.setText(LocaleController.getString(str2, i2));
            this.linearLayout.addView(this.headerCell2);
            LinearLayout linearLayout3 = new LinearLayout(context);
            this.linearLayout2 = linearLayout3;
            linearLayout3.setOrientation(1);
            this.linearLayout2.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            this.linearLayout.addView(this.linearLayout2, LayoutHelper.createLinear(-1, -2));
            RadioButtonCell radioButtonCell = new RadioButtonCell(context);
            this.radioButtonCell1 = radioButtonCell;
            radioButtonCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
            Boolean bool = this.forcePublic;
            if (bool != null && !bool.booleanValue()) {
                this.isPrivate = true;
            }
            if (this.isGroup) {
                this.radioButtonCell1.setTextAndValue(LocaleController.getString("MegaPublic", C3242R.string.MegaPublic), LocaleController.getString("MegaPublicInfo", C3242R.string.MegaPublicInfo), false, !this.isPrivate);
            } else {
                this.radioButtonCell1.setTextAndValue(LocaleController.getString("ChannelPublic", C3242R.string.ChannelPublic), LocaleController.getString("ChannelPublicInfo", C3242R.string.ChannelPublicInfo), false, !this.isPrivate);
            }
            this.radioButtonCell1.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    ChannelCreateActivity.this.lambda$createView$13(view3);
                }
            });
            Boolean bool2 = this.forcePublic;
            if (bool2 == null || bool2.booleanValue()) {
                this.linearLayout2.addView(this.radioButtonCell1, LayoutHelper.createLinear(-1, -2));
            }
            RadioButtonCell radioButtonCell2 = new RadioButtonCell(context);
            this.radioButtonCell2 = radioButtonCell2;
            radioButtonCell2.setBackgroundDrawable(Theme.getSelectorDrawable(false));
            Boolean bool3 = this.forcePublic;
            if (bool3 != null && bool3.booleanValue()) {
                this.isPrivate = false;
            }
            if (this.isGroup) {
                this.radioButtonCell2.setTextAndValue(LocaleController.getString("MegaPrivate", C3242R.string.MegaPrivate), LocaleController.getString("MegaPrivateInfo", C3242R.string.MegaPrivateInfo), false, this.isPrivate);
            } else {
                this.radioButtonCell2.setTextAndValue(LocaleController.getString("ChannelPrivate", C3242R.string.ChannelPrivate), LocaleController.getString("ChannelPrivateInfo", C3242R.string.ChannelPrivateInfo), false, this.isPrivate);
            }
            this.radioButtonCell2.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view3) {
                    ChannelCreateActivity.this.lambda$createView$14(view3);
                }
            });
            Boolean bool4 = this.forcePublic;
            if (bool4 == null || !bool4.booleanValue()) {
                this.linearLayout2.addView(this.radioButtonCell2, LayoutHelper.createLinear(-1, -2));
            }
            ShadowSectionCell shadowSectionCell = new ShadowSectionCell(context);
            this.sectionCell = shadowSectionCell;
            this.linearLayout.addView(shadowSectionCell, LayoutHelper.createLinear(-1, -2));
            LinearLayout linearLayout4 = new LinearLayout(context);
            this.linkContainer = linearLayout4;
            linearLayout4.setOrientation(1);
            this.linkContainer.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            this.linearLayout.addView(this.linkContainer, LayoutHelper.createLinear(-1, -2));
            HeaderCell headerCell3 = new HeaderCell(context);
            this.headerCell = headerCell3;
            this.linkContainer.addView(headerCell3);
            LinearLayout linearLayout5 = new LinearLayout(context);
            this.publicContainer = linearLayout5;
            linearLayout5.setOrientation(0);
            this.linkContainer.addView(this.publicContainer, LayoutHelper.createLinear(-1, 36, 21, 7, 21, 0));
            EditTextBoldCursor editTextBoldCursor2 = new EditTextBoldCursor(context);
            this.editText = editTextBoldCursor2;
            editTextBoldCursor2.setText(MessagesController.getInstance(this.currentAccount).linkPrefix + "/");
            this.editText.setTextSize(1, 18.0f);
            this.editText.setHintTextColor(Theme.getColor("windowBackgroundWhiteHintText"));
            this.editText.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            this.editText.setMaxLines(1);
            this.editText.setLines(1);
            this.editText.setEnabled(false);
            this.editText.setBackgroundDrawable(null);
            this.editText.setPadding(0, 0, 0, 0);
            this.editText.setSingleLine(true);
            this.editText.setInputType(163840);
            this.editText.setImeOptions(6);
            this.publicContainer.addView(this.editText, LayoutHelper.createLinear(-2, 36));
            EditTextBoldCursor editTextBoldCursor3 = new EditTextBoldCursor(context);
            this.descriptionTextView = editTextBoldCursor3;
            editTextBoldCursor3.setTextSize(1, 18.0f);
            this.descriptionTextView.setHintTextColor(Theme.getColor("windowBackgroundWhiteHintText"));
            this.descriptionTextView.setTextColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            this.descriptionTextView.setMaxLines(1);
            this.descriptionTextView.setLines(1);
            this.descriptionTextView.setBackgroundDrawable(null);
            this.descriptionTextView.setPadding(0, 0, 0, 0);
            this.descriptionTextView.setSingleLine(true);
            this.descriptionTextView.setInputType(163872);
            this.descriptionTextView.setImeOptions(6);
            this.descriptionTextView.setHint(LocaleController.getString("ChannelUsernamePlaceholder", C3242R.string.ChannelUsernamePlaceholder));
            this.descriptionTextView.setCursorColor(Theme.getColor("windowBackgroundWhiteBlackText"));
            this.descriptionTextView.setCursorSize(AndroidUtilities.m50dp(20));
            this.descriptionTextView.setCursorWidth(1.5f);
            this.publicContainer.addView(this.descriptionTextView, LayoutHelper.createLinear(-1, 36));
            this.descriptionTextView.addTextChangedListener(new TextWatcher() { // from class: org.telegram.ui.ChannelCreateActivity.8
                @Override // android.text.TextWatcher
                public void afterTextChanged(Editable editable) {
                }

                @Override // android.text.TextWatcher
                public void beforeTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                }

                @Override // android.text.TextWatcher
                public void onTextChanged(CharSequence charSequence, int i5, int i6, int i7) {
                    ChannelCreateActivity channelCreateActivity = ChannelCreateActivity.this;
                    channelCreateActivity.checkUserName(channelCreateActivity.descriptionTextView.getText().toString());
                }
            });
            LinearLayout linearLayout6 = new LinearLayout(context);
            this.privateContainer = linearLayout6;
            linearLayout6.setOrientation(1);
            this.linkContainer.addView(this.privateContainer, LayoutHelper.createLinear(-1, -2));
            LinkActionView linkActionView = new LinkActionView(context, this, null, this.chatId, true, ChatObject.isChannel(getMessagesController().getChat(Long.valueOf(this.chatId))));
            this.permanentLinkView = linkActionView;
            linkActionView.hideRevokeOption(true);
            this.permanentLinkView.setUsers(0, null);
            this.privateContainer.addView(this.permanentLinkView);
            LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context) { // from class: org.telegram.ui.ChannelCreateActivity.9
                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Type inference failed for: r7v0, types: [org.telegram.ui.ChannelCreateActivity$9, android.widget.TextView] */
                /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.CharSequence] */
                /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.CharSequence] */
                /* JADX WARN: Type inference failed for: r8v3, types: [android.text.SpannableStringBuilder] */
                @Override // android.widget.TextView
                public void setText(CharSequence charSequence, TextView.BufferType bufferType) {
                    if (charSequence != 0) {
                        charSequence = AndroidUtilities.replaceTags(charSequence.toString());
                        int indexOf = charSequence.toString().indexOf(10);
                        if (indexOf >= 0) {
                            charSequence.replace(indexOf, indexOf + 1, " ");
                            charSequence.setSpan(new ForegroundColorSpan(ChannelCreateActivity.this.getThemedColor("windowBackgroundWhiteRedText4")), 0, indexOf, 33);
                        }
                        TypefaceSpan[] typefaceSpanArr = (TypefaceSpan[]) charSequence.getSpans(0, charSequence.length(), TypefaceSpan.class);
                        final String obj = (ChannelCreateActivity.this.descriptionTextView == null || ChannelCreateActivity.this.descriptionTextView.getText() == null) ? "" : ChannelCreateActivity.this.descriptionTextView.getText().toString();
                        for (int i5 = 0; i5 < typefaceSpanArr.length; i5++) {
                            charSequence.setSpan(new ClickableSpan() { // from class: org.telegram.ui.ChannelCreateActivity.9.1
                                @Override // android.text.style.ClickableSpan
                                public void onClick(View view3) {
                                    Context context2 = getContext();
                                    Browser.openUrl(context2, "https://fragment.com/username/" + obj);
                                }

                                @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                                public void updateDrawState(TextPaint textPaint) {
                                    super.updateDrawState(textPaint);
                                    textPaint.setUnderlineText(false);
                                }
                            }, charSequence.getSpanStart(typefaceSpanArr[i5]), charSequence.getSpanEnd(typefaceSpanArr[i5]), 33);
                            charSequence.removeSpan(typefaceSpanArr[i5]);
                        }
                    }
                    super.setText(charSequence, bufferType);
                }
            };
            this.checkTextView = linksTextView;
            linksTextView.setLinkTextColor(Theme.getColor("windowBackgroundWhiteLinkText"));
            this.checkTextView.setHighlightColor(Theme.getColor("windowBackgroundWhiteLinkSelection"));
            this.checkTextView.setTextSize(1, 15.0f);
            this.checkTextView.setGravity(LocaleController.isRTL ? 5 : 3);
            this.checkTextView.setVisibility(8);
            this.checkTextView.setPadding(AndroidUtilities.m50dp(3), 0, AndroidUtilities.m50dp(3), 0);
            this.linkContainer.addView(this.checkTextView, LayoutHelper.createLinear(-2, -2, LocaleController.isRTL ? 5 : 3, 18, 3, 18, 7));
            TextInfoPrivacyCell textInfoPrivacyCell = new TextInfoPrivacyCell(context);
            this.typeInfoCell = textInfoPrivacyCell;
            int i5 = C3242R.C3244drawable.greydivider_bottom;
            textInfoPrivacyCell.setBackgroundDrawable(Theme.getThemedDrawable(context, i5, "windowBackgroundGrayShadow"));
            this.linearLayout.addView(this.typeInfoCell, LayoutHelper.createLinear(-1, -2));
            LoadingCell loadingCell = new LoadingCell(context);
            this.loadingAdminedCell = loadingCell;
            this.linearLayout.addView(loadingCell, LayoutHelper.createLinear(-1, -2));
            LinearLayout linearLayout7 = new LinearLayout(context);
            this.adminnedChannelsLayout = linearLayout7;
            linearLayout7.setBackgroundColor(Theme.getColor("windowBackgroundWhite"));
            this.adminnedChannelsLayout.setOrientation(1);
            this.linearLayout.addView(this.adminnedChannelsLayout, LayoutHelper.createLinear(-1, -2));
            TextInfoPrivacyCell textInfoPrivacyCell2 = new TextInfoPrivacyCell(context);
            this.adminedInfoCell = textInfoPrivacyCell2;
            textInfoPrivacyCell2.setBackgroundDrawable(Theme.getThemedDrawable(context, i5, "windowBackgroundGrayShadow"));
            this.linearLayout.addView(this.adminedInfoCell, LayoutHelper.createLinear(-1, -2));
            updatePrivatePublic();
        }
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.ChannelCreateActivity$1 */
    /* loaded from: classes5.dex */
    public class C37181 extends C3306ActionBar.ActionBarMenuOnItemClick {
        C37181() {
        }

        @Override // org.telegram.p044ui.ActionBar.C3306ActionBar.ActionBarMenuOnItemClick
        public void onItemClick(int i) {
            if (i == -1) {
                if (ChannelCreateActivity.this.donePressed) {
                    ChannelCreateActivity.this.showDoneCancelDialog();
                } else {
                    ChannelCreateActivity.this.finishFragment();
                }
            } else if (i == 1) {
                if (ChannelCreateActivity.this.currentStep != 0) {
                    if (ChannelCreateActivity.this.currentStep == 1) {
                        if (!ChannelCreateActivity.this.isPrivate) {
                            if (ChannelCreateActivity.this.descriptionTextView.length() != 0) {
                                if (ChannelCreateActivity.this.lastNameAvailable) {
                                    AndroidUtilities.runOnUIThread(ChannelCreateActivity.this.enableDoneLoading, 200L);
                                    MessagesController messagesController = MessagesController.getInstance(((BaseFragment) ChannelCreateActivity.this).currentAccount);
                                    ChannelCreateActivity channelCreateActivity = ChannelCreateActivity.this;
                                    messagesController.updateChannelUserName(channelCreateActivity, channelCreateActivity.chatId, ChannelCreateActivity.this.lastCheckName, new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$1$$ExternalSyntheticLambda0
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            ChannelCreateActivity.C37181.this.lambda$onItemClick$0();
                                        }
                                    }, new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$1$$ExternalSyntheticLambda1
                                        @Override // java.lang.Runnable
                                        public final void run() {
                                            ChannelCreateActivity.C37181.this.lambda$onItemClick$1();
                                        }
                                    });
                                } else {
                                    Vibrator vibrator = (Vibrator) ChannelCreateActivity.this.getParentActivity().getSystemService("vibrator");
                                    if (vibrator != null) {
                                        vibrator.vibrate(200L);
                                    }
                                    AndroidUtilities.shakeView(ChannelCreateActivity.this.checkTextView);
                                    return;
                                }
                            } else {
                                AlertDialog.Builder builder = new AlertDialog.Builder(ChannelCreateActivity.this.getParentActivity());
                                builder.setTitle(LocaleController.getString("ChannelPublicEmptyUsernameTitle", C3242R.string.ChannelPublicEmptyUsernameTitle));
                                builder.setMessage(LocaleController.getString("ChannelPublicEmptyUsername", C3242R.string.ChannelPublicEmptyUsername));
                                builder.setPositiveButton(LocaleController.getString("Close", C3242R.string.Close), null);
                                ChannelCreateActivity.this.showDialog(builder.create());
                                return;
                            }
                        } else if (ChannelCreateActivity.this.onFinishListener != null) {
                            Utilities.Callback2 callback2 = ChannelCreateActivity.this.onFinishListener;
                            ChannelCreateActivity channelCreateActivity2 = ChannelCreateActivity.this;
                            callback2.run(channelCreateActivity2, Long.valueOf(channelCreateActivity2.chatId));
                        }
                        if (ChannelCreateActivity.this.onFinishListener == null) {
                            Bundle bundle = new Bundle();
                            bundle.putInt("step", 2);
                            bundle.putLong("chatId", ChannelCreateActivity.this.chatId);
                            bundle.putInt("chatType", 2);
                            ChannelCreateActivity.this.presentFragment(new GroupCreateActivity(bundle), true);
                        }
                    }
                } else if (ChannelCreateActivity.this.getParentActivity() == null) {
                } else {
                    if (ChannelCreateActivity.this.donePressed) {
                        ChannelCreateActivity.this.showDoneCancelDialog();
                    } else if (ChannelCreateActivity.this.nameTextView.length() != 0) {
                        ChannelCreateActivity.this.donePressed = true;
                        AndroidUtilities.runOnUIThread(ChannelCreateActivity.this.enableDoneLoading, 200L);
                        if (ChannelCreateActivity.this.imageUpdater.isUploadingImage()) {
                            ChannelCreateActivity.this.createAfterUpload = true;
                            return;
                        }
                        ChannelCreateActivity channelCreateActivity3 = ChannelCreateActivity.this;
                        channelCreateActivity3.doneRequestId = Integer.valueOf(MessagesController.getInstance(((BaseFragment) channelCreateActivity3).currentAccount).createChat(ChannelCreateActivity.this.nameTextView.getText().toString(), new ArrayList<>(), ChannelCreateActivity.this.descriptionTextView.getText().toString(), 2, false, null, null, -1, ChannelCreateActivity.this));
                    } else {
                        Vibrator vibrator2 = (Vibrator) ChannelCreateActivity.this.getParentActivity().getSystemService("vibrator");
                        if (vibrator2 != null) {
                            vibrator2.vibrate(200L);
                        }
                        AndroidUtilities.shakeView(ChannelCreateActivity.this.nameTextView);
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$0() {
            ChannelCreateActivity.this.updateDoneProgress(false);
            if (ChannelCreateActivity.this.onFinishListener != null) {
                Utilities.Callback2 callback2 = ChannelCreateActivity.this.onFinishListener;
                ChannelCreateActivity channelCreateActivity = ChannelCreateActivity.this;
                callback2.run(channelCreateActivity, Long.valueOf(channelCreateActivity.chatId));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onItemClick$1() {
            ChannelCreateActivity.this.updateDoneProgress(false);
            if (ChannelCreateActivity.this.onFinishListener != null) {
                Utilities.Callback2 callback2 = ChannelCreateActivity.this.onFinishListener;
                ChannelCreateActivity channelCreateActivity = ChannelCreateActivity.this;
                callback2.run(channelCreateActivity, Long.valueOf(channelCreateActivity.chatId));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$10(View view) {
        this.imageUpdater.openMenu(this.avatar != null, new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                ChannelCreateActivity.this.lambda$createView$8();
            }
        }, new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnDismissListener
            public final void onDismiss(DialogInterface dialogInterface) {
                ChannelCreateActivity.this.lambda$createView$9(dialogInterface);
            }
        }, 0);
        this.cameraDrawable.setCurrentFrame(0);
        this.cameraDrawable.setCustomEndFrame(43);
        this.avatarEditor.playAnimation();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8() {
        this.avatar = null;
        this.avatarBig = null;
        this.inputPhoto = null;
        this.inputVideo = null;
        this.inputVideoPath = null;
        this.inputEmojiMarkup = null;
        this.videoTimestamp = 0.0d;
        showAvatarProgress(false, true);
        this.avatarImage.setImage((ImageLocation) null, (String) null, this.avatarDrawable, (Object) null);
        this.avatarEditor.setAnimation(this.cameraDrawable);
        this.cameraDrawable.setCurrentFrame(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$9(DialogInterface dialogInterface) {
        if (!this.imageUpdater.isUploadingImage()) {
            this.cameraDrawable.setCustomEndFrame(86);
            this.avatarEditor.playAnimation();
            return;
        }
        this.cameraDrawable.setCurrentFrame(0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$11(TextView textView, int i, KeyEvent keyEvent) {
        if (i != 5 || TextUtils.isEmpty(this.nameTextView.getEditText().getText())) {
            return false;
        }
        this.descriptionTextView.requestFocus();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$createView$12(TextView textView, int i, KeyEvent keyEvent) {
        View view;
        if (i != 6 || (view = this.doneButton) == null) {
            return false;
        }
        view.performClick();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$13(View view) {
        if (!this.canCreatePublic) {
            showPremiumIncreaseLimitDialog();
        } else if (this.isPrivate) {
            this.isPrivate = false;
            updatePrivatePublic();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$14(View view) {
        if (this.isPrivate) {
            return;
        }
        this.isPrivate = true;
        updatePrivatePublic();
    }

    private void generateLink() {
        if (this.loadingInvite || this.invite != null) {
            return;
        }
        TLRPC$ChatFull chatFull = getMessagesController().getChatFull(this.chatId);
        if (chatFull != null) {
            this.invite = chatFull.exported_invite;
        }
        if (this.invite != null) {
            return;
        }
        this.loadingInvite = true;
        TLRPC$TL_messages_getExportedChatInvites tLRPC$TL_messages_getExportedChatInvites = new TLRPC$TL_messages_getExportedChatInvites();
        tLRPC$TL_messages_getExportedChatInvites.peer = getMessagesController().getInputPeer(-this.chatId);
        tLRPC$TL_messages_getExportedChatInvites.admin_id = getMessagesController().getInputUser(getUserConfig().getCurrentUser());
        tLRPC$TL_messages_getExportedChatInvites.limit = 1;
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_messages_getExportedChatInvites, new RequestDelegate() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda24
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ChannelCreateActivity.this.lambda$generateLink$16(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateLink$16(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda21
            @Override // java.lang.Runnable
            public final void run() {
                ChannelCreateActivity.this.lambda$generateLink$15(tLRPC$TL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$generateLink$15(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject) {
        if (tLRPC$TL_error == null) {
            this.invite = (TLRPC$TL_chatInviteExported) ((TLRPC$TL_messages_exportedChatInvites) tLObject).invites.get(0);
        }
        this.loadingInvite = false;
        LinkActionView linkActionView = this.permanentLinkView;
        TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported = this.invite;
        linkActionView.setLink(tLRPC$TL_chatInviteExported != null ? tLRPC$TL_chatInviteExported.link : null);
    }

    private void updatePrivatePublic() {
        int i;
        String str;
        int i2;
        String str2;
        if (this.sectionCell == null) {
            return;
        }
        int i3 = 8;
        if (!this.isPrivate && !this.canCreatePublic) {
            this.typeInfoCell.setText(LocaleController.getString("ChangePublicLimitReached", C3242R.string.ChangePublicLimitReached));
            this.typeInfoCell.setTag("windowBackgroundWhiteRedText4");
            this.typeInfoCell.setTextColor(Theme.getColor("windowBackgroundWhiteRedText4"));
            this.linkContainer.setVisibility(8);
            this.sectionCell.setVisibility(8);
            if (this.loadingAdminedChannels) {
                this.loadingAdminedCell.setVisibility(0);
                this.adminnedChannelsLayout.setVisibility(8);
                TextInfoPrivacyCell textInfoPrivacyCell = this.typeInfoCell;
                textInfoPrivacyCell.setBackgroundDrawable(Theme.getThemedDrawable(textInfoPrivacyCell.getContext(), C3242R.C3244drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
                this.adminedInfoCell.setVisibility(8);
            } else {
                TextInfoPrivacyCell textInfoPrivacyCell2 = this.typeInfoCell;
                textInfoPrivacyCell2.setBackgroundDrawable(Theme.getThemedDrawable(textInfoPrivacyCell2.getContext(), C3242R.C3244drawable.greydivider, "windowBackgroundGrayShadow"));
                this.loadingAdminedCell.setVisibility(8);
                this.adminnedChannelsLayout.setVisibility(0);
                this.adminedInfoCell.setVisibility(0);
            }
        } else {
            this.typeInfoCell.setTag("windowBackgroundWhiteGrayText4");
            this.typeInfoCell.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText4"));
            this.sectionCell.setVisibility(0);
            this.adminedInfoCell.setVisibility(8);
            this.adminnedChannelsLayout.setVisibility(8);
            TextInfoPrivacyCell textInfoPrivacyCell3 = this.typeInfoCell;
            textInfoPrivacyCell3.setBackgroundDrawable(Theme.getThemedDrawable(textInfoPrivacyCell3.getContext(), C3242R.C3244drawable.greydivider_bottom, "windowBackgroundGrayShadow"));
            this.linkContainer.setVisibility(0);
            this.loadingAdminedCell.setVisibility(8);
            if (this.isGroup) {
                TextInfoPrivacyCell textInfoPrivacyCell4 = this.typeInfoCell;
                if (this.isPrivate) {
                    i2 = C3242R.string.MegaPrivateLinkHelp;
                    str2 = "MegaPrivateLinkHelp";
                } else {
                    i2 = C3242R.string.MegaUsernameHelp;
                    str2 = "MegaUsernameHelp";
                }
                textInfoPrivacyCell4.setText(LocaleController.getString(str2, i2));
                this.headerCell.setText(this.isPrivate ? LocaleController.getString("ChannelInviteLinkTitle", C3242R.string.ChannelInviteLinkTitle) : LocaleController.getString("ChannelLinkTitle", C3242R.string.ChannelLinkTitle));
            } else {
                TextInfoPrivacyCell textInfoPrivacyCell5 = this.typeInfoCell;
                if (this.isPrivate) {
                    i = C3242R.string.ChannelPrivateLinkHelp;
                    str = "ChannelPrivateLinkHelp";
                } else {
                    i = C3242R.string.ChannelUsernameHelp;
                    str = "ChannelUsernameHelp";
                }
                textInfoPrivacyCell5.setText(LocaleController.getString(str, i));
                this.headerCell.setText(this.isPrivate ? LocaleController.getString("ChannelInviteLinkTitle", C3242R.string.ChannelInviteLinkTitle) : LocaleController.getString("ChannelLinkTitle", C3242R.string.ChannelLinkTitle));
            }
            this.publicContainer.setVisibility(this.isPrivate ? 8 : 0);
            this.privateContainer.setVisibility(this.isPrivate ? 0 : 8);
            this.linkContainer.setPadding(0, 0, 0, this.isPrivate ? 0 : AndroidUtilities.m50dp(7));
            LinkActionView linkActionView = this.permanentLinkView;
            TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported = this.invite;
            linkActionView.setLink(tLRPC$TL_chatInviteExported != null ? tLRPC$TL_chatInviteExported.link : null);
            TextView textView = this.checkTextView;
            if (!this.isPrivate && textView.length() != 0) {
                i3 = 0;
            }
            textView.setVisibility(i3);
        }
        this.radioButtonCell1.setChecked(!this.isPrivate, true);
        this.radioButtonCell2.setChecked(this.isPrivate, true);
        this.descriptionTextView.clearFocus();
        AndroidUtilities.hideKeyboard(this.descriptionTextView);
    }

    @Override // org.telegram.p044ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void onUploadProgressChanged(float f) {
        RadialProgressView radialProgressView = this.avatarProgressView;
        if (radialProgressView == null) {
            return;
        }
        radialProgressView.setProgress(f);
    }

    @Override // org.telegram.p044ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didStartUpload(boolean z) {
        RadialProgressView radialProgressView = this.avatarProgressView;
        if (radialProgressView == null) {
            return;
        }
        radialProgressView.setProgress(BitmapDescriptorFactory.HUE_RED);
    }

    @Override // org.telegram.p044ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didUploadPhoto(final TLRPC$InputFile tLRPC$InputFile, final TLRPC$InputFile tLRPC$InputFile2, final double d, final String str, final TLRPC$PhotoSize tLRPC$PhotoSize, final TLRPC$PhotoSize tLRPC$PhotoSize2, boolean z, final TLRPC$VideoSize tLRPC$VideoSize) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda19
            @Override // java.lang.Runnable
            public final void run() {
                ChannelCreateActivity.this.lambda$didUploadPhoto$17(tLRPC$InputFile, tLRPC$InputFile2, tLRPC$VideoSize, str, d, tLRPC$PhotoSize2, tLRPC$PhotoSize);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$17(TLRPC$InputFile tLRPC$InputFile, TLRPC$InputFile tLRPC$InputFile2, TLRPC$VideoSize tLRPC$VideoSize, String str, double d, TLRPC$PhotoSize tLRPC$PhotoSize, TLRPC$PhotoSize tLRPC$PhotoSize2) {
        if (tLRPC$InputFile != null || tLRPC$InputFile2 != null) {
            this.inputPhoto = tLRPC$InputFile;
            this.inputVideo = tLRPC$InputFile2;
            this.inputEmojiMarkup = tLRPC$VideoSize;
            this.inputVideoPath = str;
            this.videoTimestamp = d;
            if (this.createAfterUpload) {
                AlertDialog alertDialog = this.cancelDialog;
                if (alertDialog != null) {
                    try {
                        alertDialog.dismiss();
                        this.cancelDialog = null;
                    } catch (Exception e) {
                        FileLog.m45e(e);
                    }
                }
                updateDoneProgress(false);
                this.donePressed = false;
                this.doneButton.performClick();
            }
            showAvatarProgress(false, true);
            this.avatarEditor.setImageDrawable(null);
            return;
        }
        TLRPC$FileLocation tLRPC$FileLocation = tLRPC$PhotoSize.location;
        this.avatar = tLRPC$FileLocation;
        this.avatarBig = tLRPC$PhotoSize2.location;
        this.avatarImage.setImage(ImageLocation.getForLocal(tLRPC$FileLocation), "50_50", this.avatarDrawable, (Object) null);
        showAvatarProgress(true, false);
    }

    @Override // org.telegram.p044ui.Components.ImageUpdater.ImageUpdaterDelegate
    public String getInitialSearchString() {
        return this.nameTextView.getText().toString();
    }

    private void showAvatarProgress(final boolean z, boolean z2) {
        if (this.avatarEditor == null) {
            return;
        }
        AnimatorSet animatorSet = this.avatarAnimation;
        if (animatorSet != null) {
            animatorSet.removeAllListeners();
            this.avatarAnimation.cancel();
            this.avatarAnimation = null;
        }
        if (!z2) {
            if (z) {
                this.avatarEditor.setAlpha(1.0f);
                this.avatarEditor.setVisibility(4);
                this.avatarProgressView.setAlpha(1.0f);
                this.avatarProgressView.setVisibility(0);
                return;
            }
            this.avatarEditor.setAlpha(1.0f);
            this.avatarEditor.setVisibility(0);
            this.avatarProgressView.setAlpha(BitmapDescriptorFactory.HUE_RED);
            this.avatarProgressView.setVisibility(4);
            return;
        }
        this.avatarAnimation = new AnimatorSet();
        if (z) {
            this.avatarProgressView.setVisibility(0);
            this.avatarAnimation.playTogether(ObjectAnimator.ofFloat(this.avatarEditor, View.ALPHA, BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(this.avatarProgressView, View.ALPHA, 1.0f));
        } else {
            if (this.avatarEditor.getVisibility() != 0) {
                this.avatarEditor.setAlpha(BitmapDescriptorFactory.HUE_RED);
            }
            this.avatarEditor.setVisibility(0);
            this.avatarAnimation.playTogether(ObjectAnimator.ofFloat(this.avatarEditor, View.ALPHA, 1.0f), ObjectAnimator.ofFloat(this.avatarProgressView, View.ALPHA, BitmapDescriptorFactory.HUE_RED));
        }
        this.avatarAnimation.setDuration(180L);
        this.avatarAnimation.addListener(new AnimatorListenerAdapter() { // from class: org.telegram.ui.ChannelCreateActivity.10
            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                if (ChannelCreateActivity.this.avatarAnimation == null || ChannelCreateActivity.this.avatarEditor == null) {
                    return;
                }
                if (z) {
                    ChannelCreateActivity.this.avatarEditor.setVisibility(4);
                } else {
                    ChannelCreateActivity.this.avatarProgressView.setVisibility(4);
                }
                ChannelCreateActivity.this.avatarAnimation = null;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animator) {
                ChannelCreateActivity.this.avatarAnimation = null;
            }
        });
        this.avatarAnimation.start();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onActivityResultFragment(int i, int i2, Intent intent) {
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onActivityResult(i, i2, intent);
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void saveSelfArgs(Bundle bundle) {
        String str;
        if (this.currentStep == 0) {
            ImageUpdater imageUpdater = this.imageUpdater;
            if (imageUpdater != null && (str = imageUpdater.currentPicturePath) != null) {
                bundle.putString("path", str);
            }
            EditTextEmoji editTextEmoji = this.nameTextView;
            if (editTextEmoji != null) {
                String obj = editTextEmoji.getText().toString();
                if (obj.length() != 0) {
                    bundle.putString("nameTextView", obj);
                }
            }
        }
    }

    public void restoreSelfArgs(Bundle bundle) {
        if (this.currentStep == 0) {
            ImageUpdater imageUpdater = this.imageUpdater;
            if (imageUpdater != null) {
                imageUpdater.currentPicturePath = bundle.getString("path");
            }
            String string = bundle.getString("nameTextView");
            if (string != null) {
                EditTextEmoji editTextEmoji = this.nameTextView;
                if (editTextEmoji != null) {
                    editTextEmoji.setText(string);
                } else {
                    this.nameToSet = string;
                }
            }
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public void onTransitionAnimationEnd(boolean z, boolean z2) {
        if (!z || this.currentStep == 1) {
            return;
        }
        this.nameTextView.requestFocus();
        this.nameTextView.openKeyboard();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        long j;
        if (i == NotificationCenter.dialogsNeedReload) {
            checkAlbumCreated();
        } else if (i == NotificationCenter.chatDidFailCreate) {
            AlertDialog alertDialog = this.cancelDialog;
            if (alertDialog != null) {
                try {
                    alertDialog.dismiss();
                    this.cancelDialog = null;
                } catch (Exception e) {
                    FileLog.m45e(e);
                }
            }
            updateDoneProgress(false);
            this.donePressed = false;
        } else if (i == NotificationCenter.chatDidCreated) {
            AlertDialog alertDialog2 = this.cancelDialog;
            if (alertDialog2 != null) {
                try {
                    alertDialog2.dismiss();
                    this.cancelDialog = null;
                } catch (Exception e2) {
                    FileLog.m45e(e2);
                }
            }
            long longValue = ((Long) objArr[0]).longValue();
            Bundle bundle = new Bundle();
            bundle.putInt("step", 1);
            bundle.putLong("chat_id", longValue);
            bundle.putBoolean("canCreatePublic", this.canCreatePublic);
            Boolean bool = this.forcePublic;
            if (bool != null) {
                bundle.putBoolean("forcePublic", bool.booleanValue());
            }
            if (this.inputPhoto == null && this.inputVideo == null && this.inputEmojiMarkup == null) {
                j = longValue;
            } else {
                j = longValue;
                MessagesController.getInstance(this.currentAccount).changeChatAvatar(longValue, null, this.inputPhoto, this.inputVideo, this.inputEmojiMarkup, this.videoTimestamp, this.inputVideoPath, this.avatar, this.avatarBig, null);
            }
            if (this.albumMode) {
                this.featureAlbumId = -j;
                checkAlbumCreated();
                return;
            }
            ChannelCreateActivity channelCreateActivity = new ChannelCreateActivity(bundle);
            channelCreateActivity.setOnFinishListener(this.onFinishListener);
            presentFragment(channelCreateActivity, true);
        }
    }

    private void loadAdminedChannels() {
        if (this.loadingAdminedChannels) {
            return;
        }
        this.loadingAdminedChannels = true;
        updatePrivatePublic();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC$TL_channels_getAdminedPublicChannels(), new RequestDelegate() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda23
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ChannelCreateActivity.this.lambda$loadAdminedChannels$23(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$23(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda18
            @Override // java.lang.Runnable
            public final void run() {
                ChannelCreateActivity.this.lambda$loadAdminedChannels$22(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$22(TLObject tLObject) {
        this.loadingAdminedChannels = false;
        if (tLObject == null || getParentActivity() == null) {
            return;
        }
        for (int i = 0; i < this.adminedChannelCells.size(); i++) {
            this.linearLayout.removeView(this.adminedChannelCells.get(i));
        }
        this.adminedChannelCells.clear();
        TLRPC$TL_messages_chats tLRPC$TL_messages_chats = (TLRPC$TL_messages_chats) tLObject;
        for (int i2 = 0; i2 < tLRPC$TL_messages_chats.chats.size(); i2++) {
            AdminedChannelCell adminedChannelCell = new AdminedChannelCell(getParentActivity(), new View.OnClickListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    ChannelCreateActivity.this.lambda$loadAdminedChannels$21(view);
                }
            }, false, 0);
            TLRPC$Chat tLRPC$Chat = tLRPC$TL_messages_chats.chats.get(i2);
            boolean z = true;
            if (i2 != tLRPC$TL_messages_chats.chats.size() - 1) {
                z = false;
            }
            adminedChannelCell.setChannel(tLRPC$Chat, z);
            this.adminedChannelCells.add(adminedChannelCell);
            this.adminnedChannelsLayout.addView(adminedChannelCell, LayoutHelper.createLinear(-1, 72));
        }
        updatePrivatePublic();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$21(View view) {
        final TLRPC$Chat currentChannel = ((AdminedChannelCell) view.getParent()).getCurrentChannel();
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString("AppName", C3242R.string.AppName));
        if (currentChannel.megagroup) {
            int i = C3242R.string.RevokeLinkAlert;
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinkAlert", i, MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + ChatObject.getPublicUsername(currentChannel), currentChannel.title)));
        } else {
            int i2 = C3242R.string.RevokeLinkAlertChannel;
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinkAlertChannel", i2, MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + ChatObject.getPublicUsername(currentChannel), currentChannel.title)));
        }
        builder.setNegativeButton(LocaleController.getString("Cancel", C3242R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("RevokeButton", C3242R.string.RevokeButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                ChannelCreateActivity.this.lambda$loadAdminedChannels$20(currentChannel, dialogInterface, i3);
            }
        });
        showDialog(builder.create());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$20(TLRPC$Chat tLRPC$Chat, DialogInterface dialogInterface, int i) {
        TLRPC$TL_channels_updateUsername tLRPC$TL_channels_updateUsername = new TLRPC$TL_channels_updateUsername();
        tLRPC$TL_channels_updateUsername.channel = MessagesController.getInputChannel(tLRPC$Chat);
        tLRPC$TL_channels_updateUsername.username = "";
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_channels_updateUsername, new RequestDelegate() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda25
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ChannelCreateActivity.this.lambda$loadAdminedChannels$19(tLObject, tLRPC$TL_error);
            }
        }, 64);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$19(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$TL_boolTrue) {
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    ChannelCreateActivity.this.lambda$loadAdminedChannels$18();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$18() {
        this.canCreatePublic = true;
        if (this.descriptionTextView.length() > 0) {
            checkUserName(this.descriptionTextView.getText().toString());
        }
        updatePrivatePublic();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkUserName(final String str) {
        if (str != null && str.length() > 0) {
            this.checkTextView.setVisibility(0);
        } else {
            this.checkTextView.setVisibility(8);
        }
        Runnable runnable = this.checkRunnable;
        if (runnable != null) {
            AndroidUtilities.cancelRunOnUIThread(runnable);
            this.checkRunnable = null;
            this.lastCheckName = null;
            if (this.checkReqId != 0) {
                ConnectionsManager.getInstance(this.currentAccount).cancelRequest(this.checkReqId, true);
            }
        }
        this.lastNameAvailable = false;
        if (str != null) {
            if (str.startsWith("_") || str.endsWith("_")) {
                this.checkTextView.setText(LocaleController.getString("LinkInvalid", C3242R.string.LinkInvalid));
                this.checkTextView.setTag("windowBackgroundWhiteRedText4");
                this.checkTextView.setTextColor(Theme.getColor("windowBackgroundWhiteRedText4"));
                return false;
            }
            for (int i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (i == 0 && charAt >= '0' && charAt <= '9') {
                    this.checkTextView.setText(LocaleController.getString("LinkInvalidStartNumber", C3242R.string.LinkInvalidStartNumber));
                    this.checkTextView.setTag("windowBackgroundWhiteRedText4");
                    this.checkTextView.setTextColor(Theme.getColor("windowBackgroundWhiteRedText4"));
                    return false;
                } else if ((charAt < '0' || charAt > '9') && ((charAt < 'a' || charAt > 'z') && ((charAt < 'A' || charAt > 'Z') && charAt != '_'))) {
                    this.checkTextView.setText(LocaleController.getString("LinkInvalid", C3242R.string.LinkInvalid));
                    this.checkTextView.setTag("windowBackgroundWhiteRedText4");
                    this.checkTextView.setTextColor(Theme.getColor("windowBackgroundWhiteRedText4"));
                    return false;
                }
            }
        }
        if (str == null || str.length() < 4) {
            this.checkTextView.setText(LocaleController.getString("LinkInvalidShort", C3242R.string.LinkInvalidShort));
            this.checkTextView.setTag("windowBackgroundWhiteRedText4");
            this.checkTextView.setTextColor(Theme.getColor("windowBackgroundWhiteRedText4"));
            return false;
        } else if (str.length() > 32) {
            this.checkTextView.setText(LocaleController.getString("LinkInvalidLong", C3242R.string.LinkInvalidLong));
            this.checkTextView.setTag("windowBackgroundWhiteRedText4");
            this.checkTextView.setTextColor(Theme.getColor("windowBackgroundWhiteRedText4"));
            return false;
        } else {
            this.checkTextView.setText(LocaleController.getString("LinkChecking", C3242R.string.LinkChecking));
            this.checkTextView.setTag("windowBackgroundWhiteGrayText8");
            this.checkTextView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText8"));
            this.lastCheckName = str;
            Runnable runnable2 = new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda16
                @Override // java.lang.Runnable
                public final void run() {
                    ChannelCreateActivity.this.lambda$checkUserName$26(str);
                }
            };
            this.checkRunnable = runnable2;
            AndroidUtilities.runOnUIThread(runnable2, 300L);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUserName$26(final String str) {
        final TLRPC$TL_channels_checkUsername tLRPC$TL_channels_checkUsername = new TLRPC$TL_channels_checkUsername();
        tLRPC$TL_channels_checkUsername.username = str;
        tLRPC$TL_channels_checkUsername.channel = MessagesController.getInstance(this.currentAccount).getInputChannel(this.chatId);
        this.checkReqId = ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_channels_checkUsername, new RequestDelegate() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda26
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                ChannelCreateActivity.this.lambda$checkUserName$25(str, tLRPC$TL_channels_checkUsername, tLObject, tLRPC$TL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUserName$25(final String str, final TLRPC$TL_channels_checkUsername tLRPC$TL_channels_checkUsername, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda17
            @Override // java.lang.Runnable
            public final void run() {
                ChannelCreateActivity.this.lambda$checkUserName$24(str, tLRPC$TL_error, tLObject, tLRPC$TL_channels_checkUsername);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkUserName$24(String str, TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, TLRPC$TL_channels_checkUsername tLRPC$TL_channels_checkUsername) {
        this.checkReqId = 0;
        String str2 = this.lastCheckName;
        if (str2 == null || !str2.equals(str)) {
            return;
        }
        if (tLRPC$TL_error == null && (tLObject instanceof TLRPC$TL_boolTrue)) {
            this.checkTextView.setText(LocaleController.formatString("LinkAvailable", C3242R.string.LinkAvailable, str));
            this.checkTextView.setTag("windowBackgroundWhiteGreenText");
            this.checkTextView.setTextColor(Theme.getColor("windowBackgroundWhiteGreenText"));
            this.lastNameAvailable = true;
            return;
        }
        if (tLRPC$TL_error != null && "USERNAME_INVALID".equals(tLRPC$TL_error.text) && tLRPC$TL_channels_checkUsername.username.length() == 4) {
            this.checkTextView.setText(LocaleController.getString("UsernameInvalidShort", C3242R.string.UsernameInvalidShort));
            this.checkTextView.setTextColor(Theme.getColor("windowBackgroundWhiteRedText4"));
        } else if (tLRPC$TL_error != null && "USERNAME_PURCHASE_AVAILABLE".equals(tLRPC$TL_error.text)) {
            if (tLRPC$TL_channels_checkUsername.username.length() == 4) {
                this.checkTextView.setText(LocaleController.getString("UsernameInvalidShortPurchase", C3242R.string.UsernameInvalidShortPurchase));
            } else {
                this.checkTextView.setText(LocaleController.getString("UsernameInUsePurchase", C3242R.string.UsernameInUsePurchase));
            }
            this.checkTextView.setTextColor(Theme.getColor("windowBackgroundWhiteGrayText8"));
        } else if (tLRPC$TL_error != null && "CHANNELS_ADMIN_PUBLIC_TOO_MUCH".equals(tLRPC$TL_error.text)) {
            this.checkTextView.setTextColor(Theme.getColor("windowBackgroundWhiteRedText4"));
            this.canCreatePublic = false;
            showPremiumIncreaseLimitDialog();
        } else {
            this.checkTextView.setTextColor(Theme.getColor("windowBackgroundWhiteRedText4"));
            this.checkTextView.setText(LocaleController.getString("LinkInUse", C3242R.string.LinkInUse));
        }
        this.lastNameAvailable = false;
    }

    private void showPremiumIncreaseLimitDialog() {
        if (getParentActivity() == null) {
            return;
        }
        LimitReachedBottomSheet limitReachedBottomSheet = new LimitReachedBottomSheet(this, getParentActivity(), 2, this.currentAccount);
        limitReachedBottomSheet.parentIsChannel = true;
        limitReachedBottomSheet.onSuccessRunnable = new Runnable() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda15
            @Override // java.lang.Runnable
            public final void run() {
                ChannelCreateActivity.this.lambda$showPremiumIncreaseLimitDialog$27();
            }
        };
        showDialog(limitReachedBottomSheet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$showPremiumIncreaseLimitDialog$27() {
        this.canCreatePublic = true;
        updatePrivatePublic();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        ThemeDescription.ThemeDescriptionDelegate themeDescriptionDelegate = new ThemeDescription.ThemeDescriptionDelegate() { // from class: org.telegram.ui.ChannelCreateActivity$$ExternalSyntheticLambda27
            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public final void didSetColor() {
                ChannelCreateActivity.this.lambda$getThemeDescriptions$28();
            }

            @Override // org.telegram.p044ui.ActionBar.ThemeDescription.ThemeDescriptionDelegate
            public /* synthetic */ void onAnimationProgress(float f) {
                ThemeDescription.ThemeDescriptionDelegate.CC.$default$onAnimationProgress(this, f);
            }
        };
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_CHECKTAG | ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, "windowBackgroundGray"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "actionBarDefault"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, "actionBarDefaultIcon"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, "actionBarDefaultTitle"));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, "actionBarDefaultSelector"));
        arrayList.add(new ThemeDescription(this.nameTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.nameTextView, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, "windowBackgroundWhiteHintText"));
        arrayList.add(new ThemeDescription(this.nameTextView, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, "windowBackgroundWhiteInputField"));
        arrayList.add(new ThemeDescription(this.nameTextView, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, "windowBackgroundWhiteInputFieldActivated"));
        arrayList.add(new ThemeDescription(this.descriptionTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.descriptionTextView, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, "windowBackgroundWhiteHintText"));
        arrayList.add(new ThemeDescription(this.descriptionTextView, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, "windowBackgroundWhiteInputField"));
        arrayList.add(new ThemeDescription(this.descriptionTextView, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_DRAWABLESELECTEDSTATE, null, null, null, null, "windowBackgroundWhiteInputFieldActivated"));
        arrayList.add(new ThemeDescription(this.helpTextView, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteGrayText8"));
        arrayList.add(new ThemeDescription(this.linearLayout2, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.linkContainer, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.sectionCell, ThemeDescription.FLAG_BACKGROUNDFILTER, null, null, null, null, "windowBackgroundGrayShadow"));
        arrayList.add(new ThemeDescription(this.headerCell, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"));
        arrayList.add(new ThemeDescription(this.headerCell2, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlueHeader"));
        arrayList.add(new ThemeDescription(this.editText, ThemeDescription.FLAG_TEXTCOLOR, null, null, null, null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.editText, ThemeDescription.FLAG_HINTTEXTCOLOR, null, null, null, null, "windowBackgroundWhiteHintText"));
        arrayList.add(new ThemeDescription(this.checkTextView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, "windowBackgroundWhiteRedText4"));
        arrayList.add(new ThemeDescription(this.checkTextView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, "windowBackgroundWhiteGrayText8"));
        arrayList.add(new ThemeDescription(this.checkTextView, ThemeDescription.FLAG_TEXTCOLOR | ThemeDescription.FLAG_CHECKTAG, null, null, null, null, "windowBackgroundWhiteGreenText"));
        arrayList.add(new ThemeDescription(this.typeInfoCell, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        arrayList.add(new ThemeDescription(this.typeInfoCell, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText4"));
        arrayList.add(new ThemeDescription(this.typeInfoCell, ThemeDescription.FLAG_CHECKTAG, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteRedText4"));
        arrayList.add(new ThemeDescription(this.adminedInfoCell, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, "windowBackgroundGrayShadow"));
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, "windowBackgroundWhite"));
        arrayList.add(new ThemeDescription(this.privateContainer, ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"));
        arrayList.add(new ThemeDescription(this.privateContainer, 0, new Class[]{TextBlockCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.loadingAdminedCell, 0, new Class[]{LoadingCell.class}, new String[]{"progressBar"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "progressCircle"));
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"));
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_CHECKBOX, new Class[]{RadioButtonCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "radioBackground"));
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{RadioButtonCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "radioBackgroundChecked"));
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{RadioButtonCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.radioButtonCell1, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{RadioButtonCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_SELECTOR, null, null, null, null, "listSelectorSDK21"));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_CHECKBOX, new Class[]{RadioButtonCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "radioBackground"));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{RadioButtonCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "radioBackgroundChecked"));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{RadioButtonCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.radioButtonCell2, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{RadioButtonCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText2"));
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{AdminedChannelCell.class}, new String[]{"nameTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteBlackText"));
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_TEXTCOLOR, new Class[]{AdminedChannelCell.class}, new String[]{"statusTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText"));
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_LINKCOLOR, new Class[]{AdminedChannelCell.class}, new String[]{"statusTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteLinkText"));
        arrayList.add(new ThemeDescription(this.adminnedChannelsLayout, ThemeDescription.FLAG_IMAGECOLOR, new Class[]{AdminedChannelCell.class}, new String[]{"deleteButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, "windowBackgroundWhiteGrayText"));
        arrayList.add(new ThemeDescription(null, 0, null, null, Theme.avatarDrawables, themeDescriptionDelegate, "avatar_text"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundRed"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundOrange"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundViolet"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundGreen"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundCyan"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundBlue"));
        arrayList.add(new ThemeDescription(null, 0, null, null, null, themeDescriptionDelegate, "avatar_backgroundPink"));
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$getThemeDescriptions$28() {
        LinearLayout linearLayout = this.adminnedChannelsLayout;
        if (linearLayout != null) {
            int childCount = linearLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = this.adminnedChannelsLayout.getChildAt(i);
                if (childAt instanceof AdminedChannelCell) {
                    ((AdminedChannelCell) childAt).update();
                }
            }
        }
    }
}