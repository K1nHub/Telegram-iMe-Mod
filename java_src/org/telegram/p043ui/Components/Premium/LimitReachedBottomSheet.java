package org.telegram.p043ui.Components.Premium;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.transition.TransitionManager;
import android.transition.TransitionSet;
import android.transition.TransitionValues;
import android.transition.Visibility;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.core.graphics.ColorUtils;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.exoplayer2.util.Consumer;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.android.gms.wearable.WearableStatusCodes;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.ChannelBoostsController;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.Utilities;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.ActionBar.BottomSheet;
import org.telegram.p043ui.ActionBar.SimpleTextView;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Cells.AdminedChannelCell;
import org.telegram.p043ui.Cells.GroupCreateUserCell;
import org.telegram.p043ui.Cells.HeaderCell;
import org.telegram.p043ui.Cells.ShadowSectionCell;
import org.telegram.p043ui.ChatActivity;
import org.telegram.p043ui.ChatEditActivity;
import org.telegram.p043ui.Components.AnimatedTextView;
import org.telegram.p043ui.Components.AvatarDrawable;
import org.telegram.p043ui.Components.BackupImageView;
import org.telegram.p043ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p043ui.Components.BulletinFactory;
import org.telegram.p043ui.Components.ColoredImageSpan;
import org.telegram.p043ui.Components.CubicBezierInterpolator;
import org.telegram.p043ui.Components.FireworksOverlay;
import org.telegram.p043ui.Components.FlickerLoadingView;
import org.telegram.p043ui.Components.LayoutHelper;
import org.telegram.p043ui.Components.LinkSpanDrawable;
import org.telegram.p043ui.Components.LoginOrView;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.Components.Premium.PremiumGradient;
import org.telegram.p043ui.Components.Premium.boosts.BoostCounterView;
import org.telegram.p043ui.Components.Premium.boosts.BoostDialogs;
import org.telegram.p043ui.Components.Premium.boosts.BoostPagerBottomSheet;
import org.telegram.p043ui.Components.Premium.boosts.BoostRepository;
import org.telegram.p043ui.Components.Premium.boosts.ReassignBoostBottomSheet;
import org.telegram.p043ui.Components.Reactions.ChatCustomReactionsEditActivity;
import org.telegram.p043ui.Components.RecyclerItemsEnterAnimator;
import org.telegram.p043ui.Components.RecyclerListView;
import org.telegram.p043ui.Components.TypefaceSpan;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.PremiumPreviewFragment;
import org.telegram.p043ui.ProfileActivity;
import org.telegram.p043ui.Stories.ChannelBoostUtilities;
import org.telegram.p043ui.Stories.DarkThemeResourceProvider;
import org.telegram.p043ui.Stories.recorder.StoryRecorder;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$ChatFull;
import org.telegram.tgnet.TLRPC$TL_boolTrue;
import org.telegram.tgnet.TLRPC$TL_channels_getAdminedPublicChannels;
import org.telegram.tgnet.TLRPC$TL_channels_getInactiveChannels;
import org.telegram.tgnet.TLRPC$TL_channels_updateUsername;
import org.telegram.tgnet.TLRPC$TL_chatInviteExported;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_messages_chats;
import org.telegram.tgnet.TLRPC$TL_messages_inactiveChats;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.p042tl.TL_stories$TL_premium_boostsStatus;
import org.telegram.tgnet.p042tl.TL_stories$TL_premium_myBoosts;
/* renamed from: org.telegram.ui.Components.Premium.LimitReachedBottomSheet */
/* loaded from: classes6.dex */
public class LimitReachedBottomSheet extends BottomSheetWithRecyclerListView implements NotificationCenter.NotificationCenterDelegate {
    TextView actionBtn;
    ArrayList<BoostFeature> boostFeatures;
    int boostFeaturesStartRow;
    private TL_stories$TL_premium_boostsStatus boostsStatus;
    int bottomRow;
    private ChannelBoostsController.CanApplyBoost canApplyBoost;
    private boolean canSendLink;
    int chatEndRow;
    int chatStartRow;
    ArrayList<TLRPC$Chat> chats;
    int chatsTitleRow;
    private int currentValue;
    private long dialogId;
    View divider;
    int dividerRow;
    int emptyViewDividerRow;
    RecyclerItemsEnterAnimator enterAnimator;
    FireworksOverlay fireworksOverlay;
    private TLRPC$Chat fromChat;
    int headerRow;
    private HeaderView headerView;
    private ArrayList<TLRPC$Chat> inactiveChats;
    private ArrayList<String> inactiveChatsSignatures;
    private boolean isCurrentChat;
    private boolean isVeryLargeFile;
    LimitParams limitParams;
    LimitPreviewView limitPreviewView;
    private int linkRow;
    private boolean loading;
    int loadingRow;
    private boolean lockInvalidation;
    public Runnable onShowPremiumScreenRunnable;
    public Runnable onSuccessRunnable;
    BaseFragment parentFragment;
    public boolean parentIsChannel;
    PremiumButtonView premiumButtonView;
    private int requiredLvl;
    private ArrayList<TLRPC$User> restrictedUsers;
    int rowCount;
    HashSet<Object> selectedChats;
    Runnable statisticClickRunnable;
    final int type;

    /* renamed from: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$LimitParams */
    /* loaded from: classes6.dex */
    public static class LimitParams {
        int icon = 0;
        String descriptionStr = null;
        String descriptionStrPremium = null;
        String descriptionStrLocked = null;
        int defaultLimit = 0;
        int premiumLimit = 0;
    }

    private static boolean hasFixedSize(int i) {
        return i == 0 || i == 28 || i == 3 || i == 4 || i == 6 || i == 7 || i == 12 || i == 13 || i == 14 || i == 15 || i == 16;
    }

    public static String limitTypeToServerString(int i) {
        switch (i) {
            case 0:
                return "double_limits__dialog_pinned";
            case 1:
            case 7:
            case 11:
            default:
                return null;
            case 2:
                return "double_limits__channels_public";
            case 3:
                return "double_limits__dialog_filters";
            case 4:
                return "double_limits__dialog_filters_chats";
            case 5:
                return "double_limits__channels";
            case 6:
                return "double_limits__upload_max_fileparts";
            case 8:
                return "double_limits__caption_length";
            case 9:
                return "double_limits__saved_gifs";
            case 10:
                return "double_limits__stickers_faved";
            case 12:
                return "double_limits__chatlist_invites";
            case 13:
                return "double_limits__chatlists_joined";
        }
    }

    protected int channelColorLevelMin() {
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$BoostFeature */
    /* loaded from: classes6.dex */
    public static class BoostFeature {
        public final int countPlural;
        public final String countValue;
        public final int iconResId;
        public final int textKey;
        public final String textKeyPlural;

        private BoostFeature(int i, int i2, String str, String str2, int i3) {
            this.iconResId = i;
            this.textKey = i2;
            this.countValue = str;
            this.textKeyPlural = str2;
            this.countPlural = i3;
        }

        /* renamed from: of */
        public static BoostFeature m62of(int i, int i2) {
            return new BoostFeature(i, i2, null, null, -1);
        }

        /* renamed from: of */
        public static BoostFeature m61of(int i, int i2, String str) {
            return new BoostFeature(i, i2, str, null, -1);
        }

        /* renamed from: of */
        public static BoostFeature m60of(int i, String str, int i2) {
            return new BoostFeature(i, -1, null, str, i2);
        }

        public boolean equals(BoostFeature boostFeature) {
            return boostFeature != null && this.iconResId == boostFeature.iconResId && this.textKey == boostFeature.textKey && TextUtils.equals(this.countValue, boostFeature.countValue) && TextUtils.equals(this.textKeyPlural, boostFeature.textKeyPlural) && this.countPlural == boostFeature.countPlural;
        }

        public static boolean arraysEqual(ArrayList<BoostFeature> arrayList, ArrayList<BoostFeature> arrayList2) {
            if (arrayList == null && arrayList2 == null) {
                return true;
            }
            if ((arrayList == null || arrayList2 != null) && ((arrayList != null || arrayList2 == null) && arrayList.size() == arrayList2.size())) {
                for (int i = 0; i < arrayList.size(); i++) {
                    if (!arrayList.get(i).equals(arrayList2.get(i))) {
                        return false;
                    }
                }
                return true;
            }
            return false;
        }

        /* renamed from: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$BoostFeature$BoostFeatureLevel */
        /* loaded from: classes6.dex */
        public static class BoostFeatureLevel extends BoostFeature {
            public final boolean isFirst;
            public final int lvl;

            public BoostFeatureLevel(int i, boolean z) {
                super(-1, -1, null, null, -1);
                this.lvl = i;
                this.isFirst = z;
            }
        }
    }

    public LimitReachedBottomSheet(BaseFragment baseFragment, Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
        super(context, baseFragment, false, hasFixedSize(i), false, resourcesProvider);
        this.linkRow = -1;
        this.lockInvalidation = false;
        this.chats = new ArrayList<>();
        this.headerRow = -1;
        this.dividerRow = -1;
        this.chatsTitleRow = -1;
        this.chatStartRow = -1;
        this.chatEndRow = -1;
        this.loadingRow = -1;
        this.emptyViewDividerRow = -1;
        this.bottomRow = -1;
        this.boostFeaturesStartRow = -1;
        this.currentValue = -1;
        this.selectedChats = new HashSet<>();
        this.inactiveChats = new ArrayList<>();
        this.inactiveChatsSignatures = new ArrayList<>();
        this.restrictedUsers = new ArrayList<>();
        this.loading = false;
        this.requiredLvl = 0;
        fixNavigationBar(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
        this.parentFragment = baseFragment;
        this.currentAccount = i2;
        this.type = i;
        updateTitle();
        updateRows();
        if (i == 2) {
            loadAdminedChannels();
        } else if (i == 5) {
            loadInactiveChannels();
        }
        updatePremiumButtonText();
        if (i == 19) {
            FireworksOverlay fireworksOverlay = new FireworksOverlay(getContext());
            this.fireworksOverlay = fireworksOverlay;
            this.container.addView(fireworksOverlay, LayoutHelper.createFrame(-1, -1));
        }
        if (i == 18 || i == 20 || i == 24 || i == 25 || i == 22 || i == 23 || i == 21 || i == 26 || i == 27) {
            ((ViewGroup) this.premiumButtonView.getParent()).removeView(this.premiumButtonView);
            View view = this.divider;
            if (view != null) {
                ((ViewGroup) view.getParent()).removeView(this.divider);
            }
            this.recyclerListView.setPadding(0, 0, 0, 0);
            TextView textView = new TextView(context);
            this.actionBtn = textView;
            textView.setGravity(17);
            this.actionBtn.setEllipsize(TextUtils.TruncateAt.END);
            this.actionBtn.setSingleLine(true);
            this.actionBtn.setTextSize(1, 14.0f);
            this.actionBtn.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.actionBtn.setText(this.premiumButtonView.getTextView().getText());
            this.actionBtn.setTextColor(Theme.getColor(Theme.key_featuredStickers_buttonText, resourcesProvider));
            this.actionBtn.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view2) {
                    LimitReachedBottomSheet.this.lambda$new$0(view2);
                }
            });
            this.actionBtn.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(8), Theme.getColor(Theme.key_featuredStickers_addButton, resourcesProvider), ColorUtils.setAlphaComponent(Theme.getColor(Theme.key_windowBackgroundWhite, resourcesProvider), 120)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$new$0(View view) {
        AndroidUtilities.addToClipboard(getBoostLink());
        dismiss();
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    public void onViewCreated(FrameLayout frameLayout) {
        int i;
        super.onViewCreated(frameLayout);
        final Context context = frameLayout.getContext();
        this.premiumButtonView = new PremiumButtonView(context, true, this.resourcesProvider) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.1
            @Override // android.view.View
            public void invalidate() {
                if (LimitReachedBottomSheet.this.lockInvalidation) {
                    return;
                }
                super.invalidate();
            }
        };
        if (!this.hasFixedSize && (i = this.type) != 18 && i != 20 && i != 24 && i != 25 && i != 22 && i != 23 && i != 21 && i != 26 && i != 27) {
            View view = new View(context) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.2
                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    super.onDraw(canvas);
                    LimitReachedBottomSheet limitReachedBottomSheet = LimitReachedBottomSheet.this;
                    if (limitReachedBottomSheet.chatEndRow - limitReachedBottomSheet.chatStartRow > 1) {
                        canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, getMeasuredWidth(), 1.0f, Theme.dividerPaint);
                    }
                }
            };
            this.divider = view;
            view.setBackgroundColor(Theme.getColor(Theme.key_dialogBackground, this.resourcesProvider));
            frameLayout.addView(this.divider, LayoutHelper.createFrame(-1, 72, 80, 0, 0, 0, 0));
        }
        frameLayout.addView(this.premiumButtonView, LayoutHelper.createFrame(-1, 48, 80, 16, 0, 16, 12));
        this.recyclerListView.setPadding(0, 0, 0, AndroidUtilities.m107dp(72));
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda20
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i2) {
                LimitReachedBottomSheet.this.lambda$onViewCreated$1(view2, i2);
            }
        });
        this.recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda21
            @Override // org.telegram.p043ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view2, int i2) {
                boolean lambda$onViewCreated$2;
                lambda$onViewCreated$2 = LimitReachedBottomSheet.this.lambda$onViewCreated$2(view2, i2);
                return lambda$onViewCreated$2;
            }
        });
        this.premiumButtonView.buttonLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LimitReachedBottomSheet.this.lambda$onViewCreated$8(context, view2);
            }
        });
        this.premiumButtonView.overlayTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda7
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LimitReachedBottomSheet.this.lambda$onViewCreated$10(view2);
            }
        });
        this.enterAnimator = new RecyclerItemsEnterAnimator(this.recyclerListView, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$1(View view, int i) {
        if (view instanceof AdminedChannelCell) {
            AdminedChannelCell adminedChannelCell = (AdminedChannelCell) view;
            TLRPC$Chat currentChannel = adminedChannelCell.getCurrentChannel();
            if (this.selectedChats.contains(currentChannel)) {
                this.selectedChats.remove(currentChannel);
            } else {
                this.selectedChats.add(currentChannel);
            }
            adminedChannelCell.setChecked(this.selectedChats.contains(currentChannel), true);
            updateButton();
        } else if (view instanceof GroupCreateUserCell) {
            if (this.canSendLink || this.type != 11) {
                GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) view;
                Object object = groupCreateUserCell.getObject();
                if (this.selectedChats.contains(object)) {
                    this.selectedChats.remove(object);
                } else {
                    this.selectedChats.add(object);
                }
                groupCreateUserCell.setChecked(this.selectedChats.contains(object), true);
                updateButton();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean lambda$onViewCreated$2(View view, int i) {
        this.recyclerListView.getOnItemClickListener().onItemClick(view, i);
        if (this.type != 19) {
            view.performHapticFeedback(0);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$8(Context context, View view) {
        int i = this.type;
        if (i == 11) {
            return;
        }
        if (i != 19) {
            if (i == 18 || i == 20 || i == 24 || i == 25 || i == 22 || i == 23 || i == 21 || i == 26 || i == 27) {
                AndroidUtilities.addToClipboard(getBoostLink());
                dismiss();
                return;
            } else if (UserConfig.getInstance(this.currentAccount).isPremium() || MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked() || this.isVeryLargeFile) {
                dismiss();
                return;
            } else {
                BaseFragment baseFragment = this.parentFragment;
                if (baseFragment == null) {
                    return;
                }
                if (baseFragment.getVisibleDialog() != null) {
                    this.parentFragment.getVisibleDialog().dismiss();
                }
                this.parentFragment.presentFragment(new PremiumPreviewFragment(limitTypeToServerString(this.type)));
                Runnable runnable = this.onShowPremiumScreenRunnable;
                if (runnable != null) {
                    runnable.run();
                }
                dismiss();
                return;
            }
        }
        ChannelBoostsController.CanApplyBoost canApplyBoost = this.canApplyBoost;
        if (canApplyBoost.empty) {
            if (UserConfig.getInstance(this.currentAccount).isPremium() && BoostRepository.isMultiBoostsAvailable()) {
                BoostDialogs.showMoreBoostsNeeded(this.dialogId, this);
                return;
            }
            AlertDialog.Builder builder = new AlertDialog.Builder(context, this.resourcesProvider);
            builder.setTitle(LocaleController.getString("PremiumNeeded", C3632R.string.PremiumNeeded));
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.getString("PremiumNeededForBoosting", C3632R.string.PremiumNeededForBoosting)));
            builder.setPositiveButton(LocaleController.getString("CheckPhoneNumberYes", C3632R.string.CheckPhoneNumberYes), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    LimitReachedBottomSheet.this.lambda$onViewCreated$3(dialogInterface, i2);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                }
            });
            builder.show();
            return;
        }
        boolean z = canApplyBoost.canApply;
        if (z && canApplyBoost.replaceDialogId == 0) {
            if (canApplyBoost.needSelector && BoostRepository.isMultiBoostsAvailable()) {
                this.lockInvalidation = true;
                this.limitPreviewView.invalidationEnabled = false;
                BaseFragment baseFragment2 = getBaseFragment();
                ChannelBoostsController.CanApplyBoost canApplyBoost2 = this.canApplyBoost;
                ReassignBoostBottomSheet.show(baseFragment2, canApplyBoost2.myBoosts, canApplyBoost2.currentChat).setOnHideListener(new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda6
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        LimitReachedBottomSheet.this.lambda$onViewCreated$5(dialogInterface);
                    }
                });
                return;
            }
            boostChannel();
        } else if (z) {
            FrameLayout frameLayout = new FrameLayout(getContext());
            BackupImageView backupImageView = new BackupImageView(getContext());
            backupImageView.setRoundRadius(AndroidUtilities.m107dp(30));
            frameLayout.addView(backupImageView, LayoutHelper.createFrame(60, 60));
            frameLayout.setClipChildren(false);
            final Paint paint = new Paint(1);
            paint.setColor(Theme.getColor(Theme.key_dialogBackground));
            final Drawable drawable = ContextCompat.getDrawable(getContext(), C3632R.C3634drawable.filled_limit_boost);
            frameLayout.addView(new View(this, getContext()) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.3
                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    float measuredWidth = getMeasuredWidth() / 2.0f;
                    float measuredHeight = getMeasuredHeight() / 2.0f;
                    canvas.drawCircle(measuredWidth, measuredHeight, getMeasuredWidth() / 2.0f, paint);
                    PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, getMeasuredWidth(), getMeasuredHeight(), -AndroidUtilities.m107dp(10), BitmapDescriptorFactory.HUE_RED);
                    canvas.drawCircle(measuredWidth, measuredHeight, (getMeasuredWidth() / 2.0f) - AndroidUtilities.m107dp(2), PremiumGradient.getInstance().getMainGradientPaint());
                    float m107dp = AndroidUtilities.m107dp(18) / 2.0f;
                    drawable.setBounds((int) (measuredWidth - m107dp), (int) (measuredHeight - m107dp), (int) (measuredWidth + m107dp), (int) (measuredHeight + m107dp));
                    drawable.draw(canvas);
                }
            }, LayoutHelper.createFrame(28, 28, 0, 34, 34, 0, 0));
            ImageView imageView = new ImageView(getContext());
            imageView.setImageResource(C3632R.C3634drawable.msg_arrow_avatar);
            imageView.setColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
            frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24, 17));
            BackupImageView backupImageView2 = new BackupImageView(getContext());
            backupImageView2.setRoundRadius(AndroidUtilities.m107dp(30));
            frameLayout.addView(backupImageView2, LayoutHelper.createFrame(60, 60, 0, 96, 0, 0, 0));
            FrameLayout frameLayout2 = new FrameLayout(getContext());
            frameLayout2.addView(frameLayout, LayoutHelper.createFrame(-2, 60, 1));
            frameLayout2.setClipChildren(false);
            TextView textView = new TextView(context);
            if (Build.VERSION.SDK_INT >= 21) {
                textView.setLetterSpacing(0.025f);
            }
            textView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack));
            textView.setTextSize(1, 16.0f);
            frameLayout2.addView(textView, LayoutHelper.createLinear(-1, -2, 0, 24, 80, 24, 0));
            AvatarDrawable avatarDrawable = new AvatarDrawable();
            TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.canApplyBoost.replaceDialogId));
            avatarDrawable.setInfo(this.currentAccount, chat);
            backupImageView.setForUserOrChat(chat, avatarDrawable);
            AvatarDrawable avatarDrawable2 = new AvatarDrawable();
            TLRPC$Chat chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
            avatarDrawable2.setInfo(this.currentAccount, chat2);
            backupImageView2.setForUserOrChat(chat2, avatarDrawable2);
            AlertDialog.Builder builder2 = new AlertDialog.Builder(context);
            builder2.setView(frameLayout2);
            textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("ReplaceBoostChannelDescription", C3632R.string.ReplaceBoostChannelDescription, chat.title, chat2.title)));
            builder2.setPositiveButton(LocaleController.getString("Replace", C3632R.string.Replace), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    LimitReachedBottomSheet.this.lambda$onViewCreated$6(dialogInterface, i2);
                }
            });
            builder2.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                }
            });
            builder2.show();
        } else {
            int i2 = canApplyBoost.floodWait;
            if (i2 != 0) {
                BoostDialogs.showFloodWait(i2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$3(DialogInterface dialogInterface, int i) {
        this.parentFragment.presentFragment(new PremiumPreviewFragment(null));
        dismiss();
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$5(DialogInterface dialogInterface) {
        this.lockInvalidation = false;
        this.limitPreviewView.invalidationEnabled = true;
        this.premiumButtonView.invalidate();
        this.limitPreviewView.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$6(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        boostChannel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$10(View view) {
        int i = this.type;
        if (i == 19) {
            ChannelBoostsController.CanApplyBoost canApplyBoost = this.canApplyBoost;
            if (canApplyBoost.canApply) {
                this.premiumButtonView.buttonLayout.callOnClick();
                ChannelBoostsController.CanApplyBoost canApplyBoost2 = this.canApplyBoost;
                if (canApplyBoost2.alreadyActive && canApplyBoost2.boostedNow) {
                    AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda11
                        @Override // java.lang.Runnable
                        public final void run() {
                            LimitReachedBottomSheet.this.lambda$onViewCreated$9();
                        }
                    }, this.canApplyBoost.needSelector ? 300L : 0L);
                }
            } else if (canApplyBoost.alreadyActive && BoostRepository.isMultiBoostsAvailable() && !this.canApplyBoost.isMaxLvl) {
                BoostDialogs.showMoreBoostsNeeded(this.dialogId, this);
            } else {
                dismiss();
            }
        } else if (i == 11) {
            if (this.selectedChats.isEmpty()) {
                dismiss();
            } else {
                sendInviteMessages();
            }
        } else if (this.selectedChats.isEmpty()) {
        } else {
            int i2 = this.type;
            if (i2 == 2) {
                revokeSelectedLinks();
            } else if (i2 == 5) {
                leaveFromSelectedGroups();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$9() {
        this.limitPreviewView.setBoosts(this.boostsStatus, false);
        limitPreviewIncreaseCurrentValue();
    }

    private void limitPreviewIncreaseCurrentValue() {
        LimitPreviewView limitPreviewView = this.limitPreviewView;
        TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus = this.boostsStatus;
        int i = tL_stories$TL_premium_boostsStatus.boosts;
        int i2 = tL_stories$TL_premium_boostsStatus.current_level_boosts;
        limitPreviewView.increaseCurrentValue(i, i - i2, tL_stories$TL_premium_boostsStatus.next_level_boosts - i2);
    }

    private void boostChannel() {
        if (this.premiumButtonView.isLoading()) {
            return;
        }
        this.premiumButtonView.setLoading(true);
        MessagesController.getInstance(this.currentAccount).getBoostsController().applyBoost(this.dialogId, this.canApplyBoost.slot, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda16
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                LimitReachedBottomSheet.this.lambda$boostChannel$12((TL_stories$TL_premium_myBoosts) obj);
            }
        }, new Utilities.Callback() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda15
            @Override // org.telegram.messenger.Utilities.Callback
            public final void run(Object obj) {
                LimitReachedBottomSheet.this.lambda$boostChannel$13((TLRPC$TL_error) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$boostChannel$12(final TL_stories$TL_premium_myBoosts tL_stories$TL_premium_myBoosts) {
        MessagesController.getInstance(this.currentAccount).getBoostsController().getBoostsStats(this.dialogId, new Consumer() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda10
            @Override // com.google.android.exoplayer2.util.Consumer
            public final void accept(Object obj) {
                LimitReachedBottomSheet.this.lambda$boostChannel$11(tL_stories$TL_premium_myBoosts, (TL_stories$TL_premium_boostsStatus) obj);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$boostChannel$11(TL_stories$TL_premium_myBoosts tL_stories$TL_premium_myBoosts, TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus) {
        this.premiumButtonView.setLoading(false);
        if (tL_stories$TL_premium_boostsStatus == null) {
            return;
        }
        this.boostsStatus.boosts++;
        limitPreviewIncreaseCurrentValue();
        setBoostsStats(tL_stories$TL_premium_boostsStatus, this.isCurrentChat);
        ChannelBoostsController.CanApplyBoost canApplyBoost = this.canApplyBoost;
        canApplyBoost.isMaxLvl = this.boostsStatus.next_level_boosts <= 0;
        canApplyBoost.boostedNow = true;
        canApplyBoost.setMyBoosts(tL_stories$TL_premium_myBoosts);
        onBoostSuccess();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$boostChannel$13(TLRPC$TL_error tLRPC$TL_error) {
        if (tLRPC$TL_error.text.startsWith("FLOOD_WAIT")) {
            BoostDialogs.showFloodWait(Utilities.parseInt((CharSequence) tLRPC$TL_error.text).intValue());
        }
        this.premiumButtonView.setLoading(false);
    }

    private void onBoostSuccess() {
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition(new Visibility(this) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.4
            @Override // android.transition.Visibility
            public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, AndroidUtilities.m107dp(20), BitmapDescriptorFactory.HUE_RED));
                animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                return animatorSet;
            }

            @Override // android.transition.Visibility
            public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, view.getAlpha(), BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED, -AndroidUtilities.m107dp(20)));
                animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                return animatorSet;
            }
        });
        transitionSet.setOrdering(0);
        TransitionManager.beginDelayedTransition(this.headerView, transitionSet);
        this.headerView.recreateTitleAndDescription();
        this.headerView.title.setText(getBoostsTitleString());
        this.headerView.description.setText(AndroidUtilities.replaceTags(getBoostsDescriptionString()));
        updateButton();
        this.fireworksOverlay.start();
        this.fireworksOverlay.performHapticFeedback(3);
        this.headerView.boostCounterView.setCount(this.canApplyBoost.boostCount, true);
    }

    private void sendInviteMessages() {
        String str;
        TLRPC$ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(this.fromChat.f1602id);
        if (chatFull == null) {
            dismiss();
            return;
        }
        if (this.fromChat.username != null) {
            str = "@" + this.fromChat.username;
        } else {
            TLRPC$TL_chatInviteExported tLRPC$TL_chatInviteExported = chatFull.exported_invite;
            if (tLRPC$TL_chatInviteExported != null) {
                str = tLRPC$TL_chatInviteExported.link;
            } else {
                dismiss();
                return;
            }
        }
        Iterator<Object> it = this.selectedChats.iterator();
        while (it.hasNext()) {
            SendMessagesHelper.getInstance(this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.m94of(str, ((TLRPC$User) it.next()).f1751id, null, null, null, true, null, null, null, false, 0, null, false, null));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                LimitReachedBottomSheet.this.lambda$sendInviteMessages$14();
            }
        });
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendInviteMessages$14() {
        BulletinFactory global = BulletinFactory.global();
        if (global != null) {
            if (this.selectedChats.size() == 1) {
                global.createSimpleBulletin(C3632R.raw.voip_invite, AndroidUtilities.replaceTags(LocaleController.formatString("InviteLinkSentSingle", C3632R.string.InviteLinkSentSingle, ContactsController.formatName((TLRPC$User) this.selectedChats.iterator().next())))).show();
            } else {
                global.createSimpleBulletin(C3632R.raw.voip_invite, AndroidUtilities.replaceTags(LocaleController.formatPluralString("InviteLinkSent", this.selectedChats.size(), Integer.valueOf(this.selectedChats.size())))).show();
            }
        }
    }

    public void setRequiredLvl(int i) {
        this.requiredLvl = i;
    }

    public void updatePremiumButtonText() {
        String string;
        int i = this.type;
        if (i == 19) {
            if (BoostRepository.isMultiBoostsAvailable()) {
                AnimatedTextView animatedTextView = this.premiumButtonView.buttonTextView;
                ChannelBoostsController.CanApplyBoost canApplyBoost = this.canApplyBoost;
                if (canApplyBoost != null && canApplyBoost.alreadyActive) {
                    string = LocaleController.getString("BoostingBoostAgain", C3632R.string.BoostingBoostAgain);
                } else {
                    string = LocaleController.getString("BoostChannel", C3632R.string.BoostChannel);
                }
                animatedTextView.setText(string);
                ChannelBoostsController.CanApplyBoost canApplyBoost2 = this.canApplyBoost;
                if (canApplyBoost2 == null || !canApplyBoost2.isMaxLvl) {
                    return;
                }
                this.premiumButtonView.buttonTextView.setText(LocaleController.getString("OK", C3632R.string.OK));
                return;
            }
            this.premiumButtonView.buttonTextView.setText(LocaleController.getString("BoostChannel", C3632R.string.BoostChannel));
        } else if (i == 18 || i == 20 || i == 24 || i == 25 || i == 22 || i == 23 || i == 21 || i == 26 || i == 27) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("d ");
            spannableStringBuilder.setSpan(new ColoredImageSpan(C3632R.C3634drawable.msg_copy_filled), 0, 1, 0);
            spannableStringBuilder.append((CharSequence) LocaleController.getString("CopyLink", C3632R.string.CopyLink));
            this.premiumButtonView.buttonTextView.setText(spannableStringBuilder);
        } else if (UserConfig.getInstance(this.currentAccount).isPremium() || MessagesController.getInstance(this.currentAccount).premiumFeaturesBlocked() || this.isVeryLargeFile) {
            this.premiumButtonView.buttonTextView.setText(LocaleController.getString("OK", C3632R.string.OK));
            this.premiumButtonView.hideIcon();
        } else {
            this.premiumButtonView.buttonTextView.setText(LocaleController.getString("IncreaseLimit", C3632R.string.IncreaseLimit));
            LimitParams limitParams = this.limitParams;
            if (limitParams != null) {
                int i2 = limitParams.defaultLimit;
                int i3 = i2 + 1;
                int i4 = limitParams.premiumLimit;
                if (i3 == i4) {
                    this.premiumButtonView.setIcon(C3632R.raw.addone_icon);
                    return;
                } else if (i2 != 0 && i4 != 0 && i4 / i2 >= 1.6f && i4 / i2 <= 2.5f) {
                    this.premiumButtonView.setIcon(C3632R.raw.double_icon);
                    return;
                } else {
                    this.premiumButtonView.hideIcon();
                    return;
                }
            }
            this.premiumButtonView.hideIcon();
        }
    }

    private void leaveFromSelectedGroups() {
        final TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(UserConfig.getInstance(this.currentAccount).getClientUserId()));
        final ArrayList arrayList = new ArrayList();
        Iterator<Object> it = this.selectedChats.iterator();
        while (it.hasNext()) {
            arrayList.add((TLRPC$Chat) it.next());
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
        builder.setTitle(LocaleController.formatPluralString("LeaveCommunities", arrayList.size(), new Object[0]));
        if (arrayList.size() == 1) {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("ChannelLeaveAlertWithName", C3632R.string.ChannelLeaveAlertWithName, ((TLRPC$Chat) arrayList.get(0)).title)));
        } else {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("ChatsLeaveAlert", C3632R.string.ChatsLeaveAlert, new Object[0])));
        }
        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("RevokeButton", C3632R.string.RevokeButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                LimitReachedBottomSheet.this.lambda$leaveFromSelectedGroups$15(arrayList, user, dialogInterface, i);
            }
        });
        AlertDialog create = builder.create();
        create.show();
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold, this.resourcesProvider));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$leaveFromSelectedGroups$15(ArrayList arrayList, TLRPC$User tLRPC$User, DialogInterface dialogInterface, int i) {
        dismiss();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) arrayList.get(i2);
            MessagesController.getInstance(this.currentAccount).putChat(tLRPC$Chat, false);
            MessagesController.getInstance(this.currentAccount).deleteParticipantFromChat(tLRPC$Chat.f1602id, tLRPC$User);
        }
    }

    private void updateButton() {
        int i = this.type;
        if (i != 19) {
            if (i == 11) {
                this.premiumButtonView.checkCounterView();
                if (!this.canSendLink) {
                    this.premiumButtonView.setOverlayText(LocaleController.getString("Close", C3632R.string.Close), true, true);
                } else if (this.selectedChats.size() > 0) {
                    this.premiumButtonView.setOverlayText(LocaleController.getString("SendInviteLink", C3632R.string.SendInviteLink), true, true);
                } else {
                    this.premiumButtonView.setOverlayText(LocaleController.getString("ActionSkip", C3632R.string.ActionSkip), true, true);
                }
                this.premiumButtonView.counterView.setCount(this.selectedChats.size(), true);
                this.premiumButtonView.invalidate();
                return;
            } else if (this.selectedChats.size() > 0) {
                String str = null;
                int i2 = this.type;
                if (i2 == 2) {
                    str = LocaleController.formatPluralString("RevokeLinks", this.selectedChats.size(), new Object[0]);
                } else if (i2 == 5) {
                    str = LocaleController.formatPluralString("LeaveCommunities", this.selectedChats.size(), new Object[0]);
                }
                this.premiumButtonView.setOverlayText(str, true, true);
                return;
            } else {
                this.premiumButtonView.clearOverlayText();
                return;
            }
        }
        ChannelBoostsController.CanApplyBoost canApplyBoost = this.canApplyBoost;
        boolean z = canApplyBoost.canApply;
        if ((z || canApplyBoost.empty) && !canApplyBoost.boostedNow && !canApplyBoost.alreadyActive) {
            if (canApplyBoost.isMaxLvl) {
                this.premiumButtonView.setOverlayText(LocaleController.getString("OK", C3632R.string.OK), true, true);
            } else {
                this.premiumButtonView.clearOverlayText();
            }
        } else if (z) {
            if (BoostRepository.isMultiBoostsAvailable()) {
                this.premiumButtonView.setOverlayText(LocaleController.getString("BoostingBoostAgain", C3632R.string.BoostingBoostAgain), true, true);
            } else {
                this.premiumButtonView.setOverlayText(LocaleController.getString("BoostChannel", C3632R.string.BoostChannel), true, true);
            }
        } else if (canApplyBoost.isMaxLvl) {
            this.premiumButtonView.setOverlayText(LocaleController.getString("OK", C3632R.string.OK), true, true);
        } else if (BoostRepository.isMultiBoostsAvailable()) {
            this.premiumButtonView.setOverlayText(LocaleController.getString("BoostingBoostAgain", C3632R.string.BoostingBoostAgain), true, true);
        } else {
            this.premiumButtonView.setOverlayText(LocaleController.getString("OK", C3632R.string.OK), true, true);
        }
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        int i = this.type;
        if (i != 11) {
            switch (i) {
                case 18:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                    return LocaleController.getString(C3632R.string.UnlockBoostChannelFeatures);
                case 19:
                    return LocaleController.getString(C3632R.string.BoostChannel);
                default:
                    return LocaleController.getString(C3632R.string.LimitReached);
            }
        }
        return LocaleController.getString(C3632R.string.ChannelInviteViaLink);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.boostByChannelCreated);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.boostedChannelByUser);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.didStartedMultiGiftsSelector);
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.boostByChannelCreated);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.boostedChannelByUser);
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.didStartedMultiGiftsSelector);
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        BaseFragment baseFragment;
        if (i == NotificationCenter.boostByChannelCreated) {
            TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) objArr[0];
            boolean booleanValue = ((Boolean) objArr[1]).booleanValue();
            BaseFragment lastFragment = getBaseFragment().getParentLayout().getLastFragment();
            if (lastFragment instanceof ChatCustomReactionsEditActivity) {
                List<BaseFragment> fragmentStack = getBaseFragment().getParentLayout().getFragmentStack();
                BaseFragment baseFragment2 = fragmentStack.size() >= 2 ? fragmentStack.get(fragmentStack.size() - 2) : null;
                BaseFragment baseFragment3 = fragmentStack.size() >= 3 ? fragmentStack.get(fragmentStack.size() - 3) : null;
                baseFragment = fragmentStack.size() >= 4 ? fragmentStack.get(fragmentStack.size() - 4) : null;
                if (baseFragment2 instanceof ChatEditActivity) {
                    getBaseFragment().getParentLayout().removeFragmentFromStack(baseFragment2);
                }
                dismiss();
                if (booleanValue) {
                    if (baseFragment3 instanceof ProfileActivity) {
                        getBaseFragment().getParentLayout().removeFragmentFromStack(baseFragment3);
                    }
                    lastFragment.finishFragment();
                    BoostDialogs.showBulletin(baseFragment, tLRPC$Chat, true);
                    return;
                }
                lastFragment.finishFragment();
                BoostDialogs.showBulletin(baseFragment3, tLRPC$Chat, false);
            } else if (booleanValue) {
                if (StoryRecorder.isVisible()) {
                    ChatActivity m68of = ChatActivity.m68of(-tLRPC$Chat.f1602id);
                    LaunchActivity.getLastFragment().presentFragment(m68of, false, false);
                    StoryRecorder.destroyInstance();
                    dismiss();
                    BoostDialogs.showBulletin(m68of, tLRPC$Chat, true);
                    return;
                }
                List<BaseFragment> fragmentStack2 = getBaseFragment().getParentLayout().getFragmentStack();
                baseFragment = fragmentStack2.size() >= 2 ? fragmentStack2.get(fragmentStack2.size() - 2) : null;
                getBaseFragment().finishFragment();
                dismiss();
                if (baseFragment instanceof ChatActivity) {
                    BoostDialogs.showBulletin(baseFragment, tLRPC$Chat, true);
                }
            } else if (StoryRecorder.isVisible()) {
                ChatActivity m68of2 = ChatActivity.m68of(-tLRPC$Chat.f1602id);
                LaunchActivity.getLastFragment().presentFragment(m68of2, false, false);
                StoryRecorder.destroyInstance();
                dismiss();
                BoostDialogs.showBulletin(m68of2, tLRPC$Chat, false);
            } else {
                dismiss();
                BoostDialogs.showBulletin(LaunchActivity.getLastFragment(), tLRPC$Chat, false);
            }
        } else if (i == NotificationCenter.boostedChannelByUser) {
            TL_stories$TL_premium_myBoosts tL_stories$TL_premium_myBoosts = (TL_stories$TL_premium_myBoosts) objArr[0];
            int intValue = ((Integer) objArr[1]).intValue();
            int intValue2 = ((Integer) objArr[2]).intValue();
            TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus = (TL_stories$TL_premium_boostsStatus) objArr[3];
            if (tL_stories$TL_premium_boostsStatus == null || this.canApplyBoost == null) {
                return;
            }
            this.boostsStatus.boosts += intValue;
            limitPreviewIncreaseCurrentValue();
            setBoostsStats(tL_stories$TL_premium_boostsStatus, this.isCurrentChat);
            ChannelBoostsController.CanApplyBoost canApplyBoost = this.canApplyBoost;
            canApplyBoost.isMaxLvl = this.boostsStatus.next_level_boosts <= 0;
            canApplyBoost.boostedNow = true;
            canApplyBoost.setMyBoosts(tL_stories$TL_premium_myBoosts);
            onBoostSuccess();
            BulletinFactory.m66of(this.container, this.resourcesProvider).createSimpleBulletinWithIconSize(C3632R.raw.ic_boosts_replace, LocaleController.formatPluralString("BoostingReassignedFromPlural", intValue, LocaleController.formatPluralString("BoostingFromOtherChannel", intValue2, new Object[0])), 30).setDuration(WearableStatusCodes.TARGET_NODE_NOT_CONNECTED).show(true);
        } else if (i == NotificationCenter.didStartedMultiGiftsSelector) {
            dismiss();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$5 */
    /* loaded from: classes6.dex */
    public class C54195 extends RecyclerListView.SelectionAdapter {
        C54195() {
        }

        @Override // org.telegram.p043ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            LimitReachedBottomSheet limitReachedBottomSheet = LimitReachedBottomSheet.this;
            if (limitReachedBottomSheet.type != 11 || limitReachedBottomSheet.canSendLink) {
                return viewHolder.getItemViewType() == 1 || viewHolder.getItemViewType() == 4;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            LinearLayout linearLayout;
            Context context = viewGroup.getContext();
            switch (i) {
                case 1:
                    linearLayout = new AdminedChannelCell(context, new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.5.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(((AdminedChannelCell) view.getParent()).getCurrentChannel());
                            LimitReachedBottomSheet.this.revokeLinks(arrayList);
                        }
                    }, true, 9);
                    break;
                case 2:
                    linearLayout = new ShadowSectionCell(context, 12, Theme.getColor(Theme.key_windowBackgroundGray, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                    break;
                case 3:
                    View headerCell = new HeaderCell(context);
                    headerCell.setPadding(0, 0, 0, AndroidUtilities.m107dp(8));
                    linearLayout = headerCell;
                    break;
                case 4:
                    linearLayout = new GroupCreateUserCell(context, 1, 8, false);
                    break;
                case 5:
                    FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context, null);
                    flickerLoadingView.setViewType(LimitReachedBottomSheet.this.type == 2 ? 22 : 21);
                    flickerLoadingView.setIsSingleCell(true);
                    flickerLoadingView.setIgnoreHeightCheck(true);
                    flickerLoadingView.setItemsCount(10);
                    linearLayout = flickerLoadingView;
                    break;
                case 6:
                    linearLayout = new View(this, LimitReachedBottomSheet.this.getContext()) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.5.3
                        @Override // android.view.View
                        protected void onMeasure(int i2, int i3) {
                            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(16), 1073741824));
                        }
                    };
                    break;
                case 7:
                    FrameLayout frameLayout = new FrameLayout(LimitReachedBottomSheet.this.getContext());
                    frameLayout.setPadding(((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft + AndroidUtilities.m107dp(6), 0, ((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft + AndroidUtilities.m107dp(6), 0);
                    TextView textView = new TextView(context);
                    textView.setPadding(AndroidUtilities.m107dp(18), AndroidUtilities.m107dp(13), AndroidUtilities.m107dp(LimitReachedBottomSheet.this.statisticClickRunnable != null ? 50 : 18), AndroidUtilities.m107dp(13));
                    textView.setTextSize(1, 16.0f);
                    textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
                    textView.setSingleLine(true);
                    frameLayout.addView(textView, LayoutHelper.createFrame(-1, -2, 0, 11, 0, 11, 0));
                    int m107dp = AndroidUtilities.m107dp(8);
                    int color = Theme.getColor(Theme.key_graySection, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider);
                    int i2 = Theme.key_listSelector;
                    textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(m107dp, color, ColorUtils.setAlphaComponent(Theme.getColor(i2, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider), 76)));
                    textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                    textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$5$$ExternalSyntheticLambda3
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            LimitReachedBottomSheet.C54195.this.lambda$onCreateViewHolder$2(view);
                        }
                    });
                    if (LimitReachedBottomSheet.this.statisticClickRunnable != null) {
                        ImageView imageView = new ImageView(LimitReachedBottomSheet.this.getContext());
                        imageView.setImageResource(C3632R.C3634drawable.msg_stats);
                        imageView.setColorFilter(Theme.getColor(Theme.key_dialogTextBlack, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                        imageView.setPadding(AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8), AndroidUtilities.m107dp(8));
                        imageView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m107dp(20), 0, ColorUtils.setAlphaComponent(Theme.getColor(i2, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider), 76)));
                        frameLayout.addView(imageView, LayoutHelper.createFrame(40, 40, 21, 15, 0, 15, 0));
                        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$5$$ExternalSyntheticLambda2
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                LimitReachedBottomSheet.C54195.this.lambda$onCreateViewHolder$3(view);
                            }
                        });
                    }
                    textView.setText(LimitReachedBottomSheet.this.getBoostLink());
                    textView.setGravity(17);
                    linearLayout = frameLayout;
                    break;
                case 8:
                    LinearLayout linearLayout2 = new LinearLayout(context);
                    linearLayout2.setPadding(((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft + AndroidUtilities.m107dp(6), 0, ((BottomSheet) LimitReachedBottomSheet.this).backgroundPaddingLeft + AndroidUtilities.m107dp(6), 0);
                    linearLayout2.setOrientation(1);
                    LoginOrView loginOrView = new LoginOrView(context);
                    final LinkSpanDrawable.LinksTextView linksTextView = new LinkSpanDrawable.LinksTextView(context);
                    SpannableStringBuilder replaceTags = AndroidUtilities.replaceTags(LocaleController.getString(C3632R.string.BoostingStoriesByGifting));
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(LocaleController.getString(C3632R.string.BoostingStoriesByGiftingLink));
                    spannableStringBuilder.setSpan(new ClickableSpan() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.5.1
                        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
                        public void updateDrawState(TextPaint textPaint) {
                            super.updateDrawState(textPaint);
                            textPaint.setUnderlineText(false);
                            textPaint.setColor(Theme.getColor(Theme.key_chat_messageLinkIn, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                        }

                        @Override // android.text.style.ClickableSpan
                        public void onClick(View view) {
                            BoostPagerBottomSheet.show(LimitReachedBottomSheet.this.getBaseFragment(), LimitReachedBottomSheet.this.dialogId, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider);
                        }
                    }, 0, spannableStringBuilder.length(), 33);
                    SpannableString spannableString = new SpannableString(">");
                    Drawable mutate = LimitReachedBottomSheet.this.getContext().getResources().getDrawable(C3632R.C3634drawable.msg_arrowright).mutate();
                    int i3 = Theme.key_chat_messageLinkIn;
                    mutate.setColorFilter(new PorterDuffColorFilter(i3, PorterDuff.Mode.SRC_IN));
                    ColoredImageSpan coloredImageSpan = new ColoredImageSpan(mutate);
                    coloredImageSpan.setColorKey(i3);
                    coloredImageSpan.setSize(AndroidUtilities.m107dp(18));
                    coloredImageSpan.setWidth(AndroidUtilities.m107dp(11));
                    coloredImageSpan.setTranslateX(-AndroidUtilities.m107dp(5));
                    spannableString.setSpan(coloredImageSpan, 0, spannableString.length(), 33);
                    linksTextView.setText(TextUtils.concat(replaceTags, " ", AndroidUtilities.replaceCharSequence(">", spannableStringBuilder, spannableString)));
                    linksTextView.setTextSize(1, 14.0f);
                    if (((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider instanceof DarkThemeResourceProvider) {
                        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteGrayText, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                    } else {
                        linksTextView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                    }
                    linksTextView.setGravity(1);
                    linksTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$5$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            LimitReachedBottomSheet.C54195.this.lambda$onCreateViewHolder$0(view);
                        }
                    });
                    loginOrView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$5$$ExternalSyntheticLambda0
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            linksTextView.performClick();
                        }
                    });
                    linearLayout2.addView(LimitReachedBottomSheet.this.actionBtn, LayoutHelper.createLinear(-1, 48, 12, 12, 12, 8));
                    linearLayout2.addView(loginOrView, LayoutHelper.createLinear(-1, 48, 0, 0, 0, 0));
                    linearLayout2.addView(linksTextView, LayoutHelper.createLinear(-1, -2, 12, 0, 12, 4));
                    linearLayout = linearLayout2;
                    break;
                case 9:
                    LimitReachedBottomSheet limitReachedBottomSheet = LimitReachedBottomSheet.this;
                    linearLayout = new BoostFeatureCell(limitReachedBottomSheet, context, ((BottomSheet) limitReachedBottomSheet).resourcesProvider);
                    break;
                default:
                    linearLayout = LimitReachedBottomSheet.this.headerView = new HeaderView(context);
                    break;
            }
            linearLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(linearLayout);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(View view) {
            BoostPagerBottomSheet.show(LimitReachedBottomSheet.this.getBaseFragment(), LimitReachedBottomSheet.this.dialogId, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$2(View view) {
            AndroidUtilities.addToClipboard(LimitReachedBottomSheet.this.getBoostLink());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$3(View view) {
            LimitReachedBottomSheet.this.statisticClickRunnable.run();
            LimitReachedBottomSheet.this.dismiss();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            int itemViewType = viewHolder.getItemViewType();
            if (itemViewType == 1) {
                LimitReachedBottomSheet limitReachedBottomSheet = LimitReachedBottomSheet.this;
                TLRPC$Chat tLRPC$Chat = limitReachedBottomSheet.chats.get(i - limitReachedBottomSheet.chatStartRow);
                AdminedChannelCell adminedChannelCell = (AdminedChannelCell) viewHolder.itemView;
                TLRPC$Chat currentChannel = adminedChannelCell.getCurrentChannel();
                adminedChannelCell.setChannel(tLRPC$Chat, false);
                adminedChannelCell.setChecked(LimitReachedBottomSheet.this.selectedChats.contains(tLRPC$Chat), currentChannel == tLRPC$Chat);
            } else if (itemViewType == 9) {
                LimitReachedBottomSheet limitReachedBottomSheet2 = LimitReachedBottomSheet.this;
                int i2 = i - limitReachedBottomSheet2.boostFeaturesStartRow;
                ArrayList<BoostFeature> arrayList = limitReachedBottomSheet2.boostFeatures;
                if (arrayList == null || i2 < 0 || i2 >= arrayList.size()) {
                    return;
                }
                ((BoostFeatureCell) viewHolder.itemView).set(LimitReachedBottomSheet.this.boostFeatures.get(i2));
            } else if (itemViewType != 3) {
                if (itemViewType != 4) {
                    return;
                }
                GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) viewHolder.itemView;
                LimitReachedBottomSheet limitReachedBottomSheet3 = LimitReachedBottomSheet.this;
                int i3 = limitReachedBottomSheet3.type;
                if (i3 == 5) {
                    TLRPC$Chat tLRPC$Chat2 = (TLRPC$Chat) limitReachedBottomSheet3.inactiveChats.get(i - LimitReachedBottomSheet.this.chatStartRow);
                    groupCreateUserCell.setObject(tLRPC$Chat2, tLRPC$Chat2.title, (String) LimitReachedBottomSheet.this.inactiveChatsSignatures.get(i - LimitReachedBottomSheet.this.chatStartRow), ((float) i) != ((float) LimitReachedBottomSheet.this.chatEndRow) - 1.0f);
                    groupCreateUserCell.setChecked(LimitReachedBottomSheet.this.selectedChats.contains(tLRPC$Chat2), false);
                } else if (i3 == 11) {
                    TLRPC$User tLRPC$User = (TLRPC$User) limitReachedBottomSheet3.restrictedUsers.get(i - LimitReachedBottomSheet.this.chatStartRow);
                    groupCreateUserCell.setObject(tLRPC$User, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name), LocaleController.formatUserStatus(((BottomSheet) LimitReachedBottomSheet.this).currentAccount, tLRPC$User, null, null), ((float) i) != ((float) LimitReachedBottomSheet.this.chatEndRow) - 1.0f);
                    groupCreateUserCell.setChecked(LimitReachedBottomSheet.this.selectedChats.contains(tLRPC$User), false);
                }
            } else {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                LimitReachedBottomSheet limitReachedBottomSheet4 = LimitReachedBottomSheet.this;
                int i4 = limitReachedBottomSheet4.type;
                if (i4 != 11) {
                    if (i4 == 2) {
                        headerCell.setText(LocaleController.getString("YourPublicCommunities", C3632R.string.YourPublicCommunities));
                    } else {
                        headerCell.setText(LocaleController.getString("LastActiveCommunities", C3632R.string.LastActiveCommunities));
                    }
                } else if (!limitReachedBottomSheet4.canSendLink) {
                    if (LimitReachedBottomSheet.this.restrictedUsers.size() == 1) {
                        headerCell.setText(LocaleController.getString("ChannelInviteViaLinkRestricted2", C3632R.string.ChannelInviteViaLinkRestricted2));
                    } else {
                        headerCell.setText(LocaleController.getString("ChannelInviteViaLinkRestricted3", C3632R.string.ChannelInviteViaLinkRestricted3));
                    }
                } else {
                    headerCell.setText(LocaleController.getString("ChannelInviteViaLink", C3632R.string.ChannelInviteViaLink));
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            int i2;
            LimitReachedBottomSheet limitReachedBottomSheet = LimitReachedBottomSheet.this;
            if (limitReachedBottomSheet.headerRow == i) {
                return 0;
            }
            if (limitReachedBottomSheet.dividerRow == i) {
                return 2;
            }
            if (limitReachedBottomSheet.chatsTitleRow == i) {
                return 3;
            }
            if (limitReachedBottomSheet.loadingRow == i) {
                return 5;
            }
            if (limitReachedBottomSheet.emptyViewDividerRow == i) {
                return 6;
            }
            if (limitReachedBottomSheet.linkRow == i) {
                return 7;
            }
            LimitReachedBottomSheet limitReachedBottomSheet2 = LimitReachedBottomSheet.this;
            if (limitReachedBottomSheet2.bottomRow == i) {
                return 8;
            }
            ArrayList<BoostFeature> arrayList = limitReachedBottomSheet2.boostFeatures;
            if (arrayList == null || i < (i2 = limitReachedBottomSheet2.boostFeaturesStartRow) || i > i2 + arrayList.size()) {
                int i3 = LimitReachedBottomSheet.this.type;
                return (i3 == 5 || i3 == 11) ? 4 : 1;
            }
            return 9;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return LimitReachedBottomSheet.this.rowCount;
        }
    }

    @Override // org.telegram.p043ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter() {
        return new C54195();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBoostLink() {
        return ChannelBoostUtilities.createLink(this.currentAccount, this.dialogId);
    }

    public void setCurrentValue(int i) {
        this.currentValue = i;
    }

    public void setVeryLargeFile(boolean z) {
        this.isVeryLargeFile = z;
        updatePremiumButtonText();
    }

    public void setRestrictedUsers(TLRPC$Chat tLRPC$Chat, ArrayList<TLRPC$User> arrayList) {
        this.fromChat = tLRPC$Chat;
        this.canSendLink = ChatObject.canUserDoAdminAction(tLRPC$Chat, 3);
        this.restrictedUsers = new ArrayList<>(arrayList);
        this.selectedChats.clear();
        if (this.canSendLink) {
            this.selectedChats.addAll(this.restrictedUsers);
        }
        updateRows();
        updateButton();
    }

    public void setDialogId(long j) {
        this.dialogId = j;
    }

    public void setBoostsStats(TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus, boolean z) {
        this.boostsStatus = tL_stories$TL_premium_boostsStatus;
        this.isCurrentChat = z;
        updateRows();
    }

    public void setCanApplyBoost(ChannelBoostsController.CanApplyBoost canApplyBoost) {
        this.canApplyBoost = canApplyBoost;
        updateButton();
        updatePremiumButtonText();
    }

    public void showStatisticButtonInLink(Runnable runnable) {
        this.statisticClickRunnable = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$HeaderView */
    /* loaded from: classes6.dex */
    public class HeaderView extends LinearLayout {
        BoostCounterView boostCounterView;
        TextView description;
        TextView title;
        LinearLayout titleLinearLayout;

        /* JADX WARN: Removed duplicated region for block: B:121:0x03c6  */
        /* JADX WARN: Removed duplicated region for block: B:122:0x03c9  */
        /* JADX WARN: Removed duplicated region for block: B:125:0x03ee  */
        /* JADX WARN: Removed duplicated region for block: B:134:0x040f  */
        /* JADX WARN: Removed duplicated region for block: B:148:0x0468  */
        /* JADX WARN: Removed duplicated region for block: B:153:0x049f  */
        /* JADX WARN: Removed duplicated region for block: B:155:0x04ae  */
        /* JADX WARN: Removed duplicated region for block: B:197:0x05b4  */
        /* JADX WARN: Removed duplicated region for block: B:212:0x072e  */
        /* JADX WARN: Removed duplicated region for block: B:219:0x0778  */
        /* JADX WARN: Removed duplicated region for block: B:220:0x0788  */
        /* JADX WARN: Removed duplicated region for block: B:223:0x079b  */
        /* JADX WARN: Removed duplicated region for block: B:224:0x07af  */
        /* JADX WARN: Removed duplicated region for block: B:69:0x0319  */
        /* JADX WARN: Removed duplicated region for block: B:70:0x0329  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public HeaderView(android.content.Context r37) {
            /*
                Method dump skipped, instructions count: 1990
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet.HeaderView.<init>(org.telegram.ui.Components.Premium.LimitReachedBottomSheet, android.content.Context):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            LimitReachedBottomSheet.this.getBaseFragment().presentFragment(ChatActivity.m68of(LimitReachedBottomSheet.this.dialogId));
            LimitReachedBottomSheet.this.dismiss();
        }

        public void recreateTitleAndDescription() {
            int indexOfChild = indexOfChild(this.description);
            if (LimitReachedBottomSheet.this.isCurrentChat) {
                int indexOfChild2 = indexOfChild(this.titleLinearLayout);
                removeView(this.titleLinearLayout);
                this.titleLinearLayout.removeView(this.title);
                this.titleLinearLayout.removeView(this.boostCounterView);
                LinearLayout linearLayout = new LinearLayout(getContext());
                this.titleLinearLayout = linearLayout;
                linearLayout.setOrientation(0);
                this.titleLinearLayout.setWeightSum(1.0f);
                this.titleLinearLayout.addView(this.title, LayoutHelper.createLinear(-2, -2, 1.0f, 0));
                this.titleLinearLayout.addView(this.boostCounterView, LayoutHelper.createLinear(-2, -2, 48, 0, 2, 0, 0));
                addView(this.titleLinearLayout, indexOfChild2, LayoutHelper.createLinear(-2, -2, 1, 25, 22, 12, 9));
            } else {
                int indexOfChild3 = indexOfChild(this.title);
                removeView(this.title);
                TextView textView = new TextView(getContext());
                this.title = textView;
                textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
                this.title.setTextSize(1, 20.0f);
                this.title.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                this.title.setGravity(17);
                addView(this.title, indexOfChild3, LayoutHelper.createLinear(-2, -2, 1, 0, 22, 0, 0));
            }
            removeView(this.description);
            TextView textView2 = new TextView(getContext());
            this.description = textView2;
            textView2.setTextSize(1, 14.0f);
            TextView textView3 = this.description;
            textView3.setLineSpacing(textView3.getLineSpacingExtra(), this.description.getLineSpacingMultiplier() * 1.1f);
            this.description.setGravity(1);
            this.description.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
            addView(this.description, indexOfChild, LayoutHelper.createLinear(-2, -2, 1, 24, -2, 24, 17));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBoostsTitleString() {
        TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus = this.boostsStatus;
        if (tL_stories$TL_premium_boostsStatus.next_level_boosts == 0) {
            return LocaleController.formatString("BoostsMaxLevelReached", C3632R.string.BoostsMaxLevelReached, new Object[0]);
        }
        if (tL_stories$TL_premium_boostsStatus.level > 0 && !this.canApplyBoost.alreadyActive) {
            return LocaleController.getString(C3632R.string.BoostChannel);
        }
        if (this.isCurrentChat) {
            return this.canApplyBoost.alreadyActive ? LocaleController.formatString("YouBoostedChannel2", C3632R.string.YouBoostedChannel2, MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId)).title) : LocaleController.getString(C3632R.string.BoostChannel);
        } else if (this.canApplyBoost.alreadyActive) {
            return LocaleController.getString("YouBoostedChannel", C3632R.string.YouBoostedChannel);
        } else {
            return LocaleController.getString("BoostingEnableStoriesForChannel", C3632R.string.BoostingEnableStoriesForChannel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBoostsDescriptionString() {
        TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
        String string = chat == null ? LocaleController.getString(C3632R.string.AccDescrChannel) : chat.title;
        TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus = this.boostsStatus;
        int i = tL_stories$TL_premium_boostsStatus.boosts;
        if ((i == tL_stories$TL_premium_boostsStatus.current_level_boosts) && this.canApplyBoost.alreadyActive) {
            int i2 = tL_stories$TL_premium_boostsStatus.level;
            if (i2 == 1) {
                return LocaleController.formatString("ChannelBoostsJustReachedLevel1", C3632R.string.ChannelBoostsJustReachedLevel1, new Object[0]);
            }
            return LocaleController.formatString("ChannelBoostsJustReachedLevelNext", C3632R.string.ChannelBoostsJustReachedLevelNext, Integer.valueOf(i2), LocaleController.formatPluralString("BoostStories", this.boostsStatus.level, new Object[0]));
        } else if (this.canApplyBoost.alreadyActive) {
            int i3 = tL_stories$TL_premium_boostsStatus.level;
            if (i3 == 0) {
                int i4 = C3632R.string.ChannelNeedBoostsDescriptionForNewFeatures;
                int i5 = tL_stories$TL_premium_boostsStatus.next_level_boosts;
                return LocaleController.formatString(i4, string, LocaleController.formatPluralString("MoreBoosts", i5 - i, Integer.valueOf(i5 - i)));
            }
            int i6 = tL_stories$TL_premium_boostsStatus.next_level_boosts;
            if (i6 == 0) {
                return LocaleController.formatString("ChannelBoostsJustReachedLevelNext", C3632R.string.ChannelBoostsJustReachedLevelNext, Integer.valueOf(i3), LocaleController.formatPluralString("BoostStories", this.boostsStatus.level + 1, new Object[0]));
            }
            return LocaleController.formatString(C3632R.string.ChannelNeedBoostsDescriptionForNewFeatures, string, LocaleController.formatPluralString("MoreBoosts", i6 - i, Integer.valueOf(i6 - i)));
        } else {
            int i7 = tL_stories$TL_premium_boostsStatus.level;
            if (i7 == 0) {
                int i8 = C3632R.string.ChannelNeedBoostsDescriptionForNewFeatures;
                int i9 = tL_stories$TL_premium_boostsStatus.next_level_boosts;
                return LocaleController.formatString(i8, string, LocaleController.formatPluralString("MoreBoosts", i9 - i, Integer.valueOf(i9 - i)));
            }
            int i10 = tL_stories$TL_premium_boostsStatus.next_level_boosts;
            if (i10 == 0) {
                return LocaleController.formatString("ChannelBoostsJustReachedLevelNext", C3632R.string.ChannelBoostsJustReachedLevelNext, Integer.valueOf(i7), LocaleController.formatPluralString("BoostStories", this.boostsStatus.level + 1, new Object[0]));
            }
            return LocaleController.formatString(C3632R.string.ChannelNeedBoostsDescriptionForNewFeatures, string, LocaleController.formatPluralString("MoreBoosts", i10 - i, Integer.valueOf(i10 - i)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LimitParams getLimitParams(int i, int i2) {
        LimitParams limitParams = new LimitParams();
        if (i == 0) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).dialogFiltersPinnedLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).dialogFiltersPinnedLimitPremium;
            limitParams.icon = C3632R.C3634drawable.msg_limit_pin;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedPinDialogs", C3632R.string.LimitReachedPinDialogs, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedPinDialogsPremium", C3632R.string.LimitReachedPinDialogsPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedPinDialogsLocked", C3632R.string.LimitReachedPinDialogsLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 28) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).savedDialogsPinnedLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).savedDialogsPinnedLimitPremium;
            limitParams.icon = C3632R.C3634drawable.msg_limit_pin;
            limitParams.descriptionStr = LocaleController.formatString(C3632R.string.LimitReachedPinSavedDialogs, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString(C3632R.string.LimitReachedPinSavedDialogsPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString(C3632R.string.LimitReachedPinSavedDialogsLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 2) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).publicLinksLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).publicLinksLimitPremium;
            limitParams.icon = C3632R.C3634drawable.msg_limit_links;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedPublicLinks", C3632R.string.LimitReachedPublicLinks, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedPublicLinksPremium", C3632R.string.LimitReachedPublicLinksPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedPublicLinksLocked", C3632R.string.LimitReachedPublicLinksLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 12) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).chatlistInvitesLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).chatlistInvitesLimitPremium;
            limitParams.icon = C3632R.C3634drawable.msg_limit_links;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedFolderLinks", C3632R.string.LimitReachedFolderLinks, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedFolderLinksPremium", C3632R.string.LimitReachedFolderLinksPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedFolderLinksLocked", C3632R.string.LimitReachedFolderLinksLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 13) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).chatlistJoinedLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).chatlistJoinedLimitPremium;
            limitParams.icon = C3632R.C3634drawable.msg_limit_folder;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedSharedFolders", C3632R.string.LimitReachedSharedFolders, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedSharedFoldersPremium", C3632R.string.LimitReachedSharedFoldersPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedSharedFoldersLocked", C3632R.string.LimitReachedSharedFoldersLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 3) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).dialogFiltersLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).dialogFiltersLimitPremium;
            limitParams.icon = C3632R.C3634drawable.msg_limit_folder;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedFolders", C3632R.string.LimitReachedFolders, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedFoldersPremium", C3632R.string.LimitReachedFoldersPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedFoldersLocked", C3632R.string.LimitReachedFoldersLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 4) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).dialogFiltersChatsLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).dialogFiltersChatsLimitPremium;
            limitParams.icon = C3632R.C3634drawable.msg_limit_chats;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedChatInFolders", C3632R.string.LimitReachedChatInFolders, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedChatInFoldersPremium", C3632R.string.LimitReachedChatInFoldersPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedChatInFoldersLocked", C3632R.string.LimitReachedChatInFoldersLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 5) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).channelsLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).channelsLimitPremium;
            limitParams.icon = C3632R.C3634drawable.msg_limit_groups;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedCommunities", C3632R.string.LimitReachedCommunities, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedCommunitiesPremium", C3632R.string.LimitReachedCommunitiesPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedCommunitiesLocked", C3632R.string.LimitReachedCommunitiesLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 6) {
            limitParams.defaultLimit = 100;
            limitParams.premiumLimit = 200;
            limitParams.icon = C3632R.C3634drawable.msg_limit_folder;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedFileSize", C3632R.string.LimitReachedFileSize, "2 GB", "4 GB");
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedFileSizePremium", C3632R.string.LimitReachedFileSizePremium, "4 GB");
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedFileSizeLocked", C3632R.string.LimitReachedFileSizeLocked, "2 GB");
        } else if (i == 7) {
            limitParams.defaultLimit = 3;
            limitParams.premiumLimit = 4;
            limitParams.icon = C3632R.C3634drawable.msg_limit_accounts;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedAccounts", C3632R.string.LimitReachedAccounts, 3, Integer.valueOf(limitParams.premiumLimit));
            int i3 = C3632R.string.LimitReachedAccountsPremium;
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedAccountsPremium", i3, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedAccountsPremium", i3, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 11) {
            limitParams.defaultLimit = 0;
            limitParams.premiumLimit = 0;
            limitParams.icon = C3632R.C3634drawable.msg_limit_links;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedAccounts", C3632R.string.LimitReachedAccounts, 0, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = "";
            limitParams.descriptionStrLocked = "";
        } else if (i == 14) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).storyExpiringLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).storyExpiringLimitPremium;
            limitParams.icon = C3632R.C3634drawable.msg_limit_stories;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedStoriesCount", C3632R.string.LimitReachedStoriesCount, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            int i4 = C3632R.string.LimitReachedStoriesCountPremium;
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedStoriesCountPremium", i4, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedStoriesCountPremium", i4, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 15) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).storiesSentWeeklyLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).storiesSentWeeklyLimitPremium;
            limitParams.icon = C3632R.C3634drawable.msg_limit_stories;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedStoriesWeekly", C3632R.string.LimitReachedStoriesWeekly, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            int i5 = C3632R.string.LimitReachedStoriesWeeklyPremium;
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedStoriesWeeklyPremium", i5, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedStoriesWeeklyPremium", i5, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 16) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).storiesSentMonthlyLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).storiesSentMonthlyLimitPremium;
            limitParams.icon = C3632R.C3634drawable.msg_limit_stories;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedStoriesMonthly", C3632R.string.LimitReachedStoriesMonthly, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            int i6 = C3632R.string.LimitReachedStoriesMonthlyPremium;
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedStoriesMonthlyPremium", i6, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedStoriesMonthlyPremium", i6, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 18 || i == 20 || i == 24 || i == 26 || i == 27 || i == 25 || i == 22 || i == 23 || i == 19 || i == 21) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).storiesSentMonthlyLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).storiesSentMonthlyLimitPremium;
            limitParams.icon = C3632R.C3634drawable.filled_limit_boost;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedStoriesMonthly", C3632R.string.LimitReachedStoriesMonthly, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            int i7 = C3632R.string.LimitReachedStoriesMonthlyPremium;
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedStoriesMonthlyPremium", i7, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedStoriesMonthlyPremium", i7, Integer.valueOf(limitParams.defaultLimit));
        }
        return limitParams;
    }

    private void loadAdminedChannels() {
        this.loading = true;
        updateRows();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC$TL_channels_getAdminedPublicChannels(), new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda18
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                LimitReachedBottomSheet.this.lambda$loadAdminedChannels$17(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$17(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda14
            @Override // java.lang.Runnable
            public final void run() {
                LimitReachedBottomSheet.this.lambda$loadAdminedChannels$16(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$16(TLObject tLObject) {
        int i;
        if (tLObject != null) {
            this.chats.clear();
            this.chats.addAll(((TLRPC$TL_messages_chats) tLObject).chats);
            this.loading = false;
            this.enterAnimator.showItemsAnimated(this.chatsTitleRow + 4);
            int i2 = 0;
            while (true) {
                if (i2 >= this.recyclerListView.getChildCount()) {
                    i = 0;
                    break;
                } else if (this.recyclerListView.getChildAt(i2) instanceof HeaderView) {
                    i = this.recyclerListView.getChildAt(i2).getTop();
                    break;
                } else {
                    i2++;
                }
            }
            updateRows();
            if (this.headerRow >= 0 && i != 0) {
                ((LinearLayoutManager) this.recyclerListView.getLayoutManager()).scrollToPositionWithOffset(this.headerRow + 1, i);
            }
        }
        if (this.limitParams == null) {
            return;
        }
        int max = Math.max(this.chats.size(), this.limitParams.defaultLimit);
        this.limitPreviewView.setIconValue(max, false);
        this.limitPreviewView.setBagePosition(max / this.limitParams.premiumLimit);
        this.limitPreviewView.startDelayedAnimation();
    }

    private void updateRows() {
        this.rowCount = 0;
        this.dividerRow = -1;
        this.chatStartRow = -1;
        this.chatEndRow = -1;
        this.loadingRow = -1;
        this.linkRow = -1;
        this.emptyViewDividerRow = -1;
        this.boostFeaturesStartRow = -1;
        int i = 0 + 1;
        this.rowCount = i;
        this.headerRow = 0;
        int i2 = this.type;
        if (i2 == 19 || i2 == 18 || i2 == 20 || i2 == 24 || i2 == 26 || i2 == 27 || i2 == 22 || i2 == 23 || i2 == 25 || i2 == 21) {
            if (i2 != 19) {
                this.topPadding = 0.24f;
                this.rowCount = i + 1;
                this.linkRow = i;
                if (MessagesController.getInstance(this.currentAccount).giveawayGiftsPurchaseAvailable) {
                    int i3 = this.rowCount;
                    this.rowCount = i3 + 1;
                    this.bottomRow = i3;
                }
            }
            setupBoostFeatures();
            int i4 = this.rowCount;
            int i5 = i4 + 1;
            this.rowCount = i5;
            this.boostFeaturesStartRow = i4;
            this.rowCount = i5 + (this.boostFeatures.size() - 1);
        } else if (!hasFixedSize(i2)) {
            int i6 = this.rowCount;
            int i7 = i6 + 1;
            this.rowCount = i7;
            this.dividerRow = i6;
            int i8 = i7 + 1;
            this.rowCount = i8;
            this.chatsTitleRow = i7;
            if (this.loading) {
                this.rowCount = i8 + 1;
                this.loadingRow = i8;
            } else {
                this.chatStartRow = i8;
                int i9 = this.type;
                if (i9 == 11) {
                    this.rowCount = i8 + this.restrictedUsers.size();
                } else if (i9 == 5) {
                    this.rowCount = i8 + this.inactiveChats.size();
                } else {
                    this.rowCount = i8 + this.chats.size();
                }
                int i10 = this.rowCount;
                this.chatEndRow = i10;
                if (i10 - this.chatStartRow > 1) {
                    this.rowCount = i10 + 1;
                    this.emptyViewDividerRow = i10;
                }
            }
        }
        notifyDataSetChanged();
    }

    private void revokeSelectedLinks() {
        ArrayList<TLRPC$Chat> arrayList = new ArrayList<>();
        Iterator<Object> it = this.selectedChats.iterator();
        while (it.hasNext()) {
            this.chats.add((TLRPC$Chat) it.next());
        }
        revokeLinks(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void revokeLinks(final ArrayList<TLRPC$Chat> arrayList) {
        AlertDialog.Builder builder = new AlertDialog.Builder(getContext(), this.resourcesProvider);
        builder.setTitle(LocaleController.formatPluralString("RevokeLinks", arrayList.size(), new Object[0]));
        if (arrayList.size() == 1) {
            TLRPC$Chat tLRPC$Chat = arrayList.get(0);
            if (this.parentIsChannel) {
                int i = C3632R.string.RevokeLinkAlertChannel;
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinkAlertChannel", i, MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + ChatObject.getPublicUsername(tLRPC$Chat), tLRPC$Chat.title)));
            } else {
                int i2 = C3632R.string.RevokeLinkAlert;
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinkAlert", i2, MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + ChatObject.getPublicUsername(tLRPC$Chat), tLRPC$Chat.title)));
            }
        } else if (this.parentIsChannel) {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinksAlertChannel", C3632R.string.RevokeLinksAlertChannel, new Object[0])));
        } else {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinksAlert", C3632R.string.RevokeLinksAlert, new Object[0])));
        }
        builder.setNegativeButton(LocaleController.getString("Cancel", C3632R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("RevokeButton", C3632R.string.RevokeButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                LimitReachedBottomSheet.this.lambda$revokeLinks$19(arrayList, dialogInterface, i3);
            }
        });
        AlertDialog create = builder.create();
        create.show();
        TextView textView = (TextView) create.getButton(-1);
        if (textView != null) {
            textView.setTextColor(Theme.getColor(Theme.key_text_RedBold, this.resourcesProvider));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revokeLinks$19(ArrayList arrayList, DialogInterface dialogInterface, int i) {
        dismiss();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC$TL_channels_updateUsername tLRPC$TL_channels_updateUsername = new TLRPC$TL_channels_updateUsername();
            tLRPC$TL_channels_updateUsername.channel = MessagesController.getInputChannel((TLRPC$Chat) arrayList.get(i2));
            tLRPC$TL_channels_updateUsername.username = "";
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_channels_updateUsername, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda17
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    LimitReachedBottomSheet.this.lambda$revokeLinks$18(tLObject, tLRPC$TL_error);
                }
            }, 64);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revokeLinks$18(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$TL_boolTrue) {
            AndroidUtilities.runOnUIThread(this.onSuccessRunnable);
        }
    }

    private void loadInactiveChannels() {
        this.loading = true;
        updateRows();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC$TL_channels_getInactiveChannels(), new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda19
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                LimitReachedBottomSheet.this.lambda$loadInactiveChannels$21(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadInactiveChannels$21(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        String formatPluralString;
        if (tLRPC$TL_error == null) {
            final TLRPC$TL_messages_inactiveChats tLRPC$TL_messages_inactiveChats = (TLRPC$TL_messages_inactiveChats) tLObject;
            final ArrayList arrayList = new ArrayList();
            final int min = Math.min(tLRPC$TL_messages_inactiveChats.chats.size(), tLRPC$TL_messages_inactiveChats.dates.size());
            for (int i = 0; i < min; i++) {
                TLRPC$Chat tLRPC$Chat = tLRPC$TL_messages_inactiveChats.chats.get(i);
                int currentTime = (ConnectionsManager.getInstance(this.currentAccount).getCurrentTime() - tLRPC$TL_messages_inactiveChats.dates.get(i).intValue()) / 86400;
                if (currentTime < 30) {
                    formatPluralString = LocaleController.formatPluralString("Days", currentTime, new Object[0]);
                } else if (currentTime < 365) {
                    formatPluralString = LocaleController.formatPluralString("Months", currentTime / 30, new Object[0]);
                } else {
                    formatPluralString = LocaleController.formatPluralString("Years", currentTime / 365, new Object[0]);
                }
                if (ChatObject.isMegagroup(tLRPC$Chat)) {
                    arrayList.add(LocaleController.formatString("InactiveChatSignature", C3632R.string.InactiveChatSignature, LocaleController.formatPluralString("Members", tLRPC$Chat.participants_count, new Object[0]), formatPluralString));
                } else if (ChatObject.isChannel(tLRPC$Chat)) {
                    arrayList.add(LocaleController.formatString("InactiveChannelSignature", C3632R.string.InactiveChannelSignature, formatPluralString));
                } else {
                    arrayList.add(LocaleController.formatString("InactiveChatSignature", C3632R.string.InactiveChatSignature, LocaleController.formatPluralString("Members", tLRPC$Chat.participants_count, new Object[0]), formatPluralString));
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda13
                @Override // java.lang.Runnable
                public final void run() {
                    LimitReachedBottomSheet.this.lambda$loadInactiveChannels$20(arrayList, min, tLRPC$TL_messages_inactiveChats);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadInactiveChannels$20(ArrayList arrayList, int i, TLRPC$TL_messages_inactiveChats tLRPC$TL_messages_inactiveChats) {
        int i2;
        this.inactiveChatsSignatures.clear();
        this.inactiveChats.clear();
        this.inactiveChatsSignatures.addAll(arrayList);
        for (int i3 = 0; i3 < i; i3++) {
            this.inactiveChats.add(tLRPC$TL_messages_inactiveChats.chats.get(i3));
        }
        this.loading = false;
        this.enterAnimator.showItemsAnimated(this.chatsTitleRow + 4);
        int i4 = 0;
        while (true) {
            if (i4 >= this.recyclerListView.getChildCount()) {
                i2 = 0;
                break;
            } else if (this.recyclerListView.getChildAt(i4) instanceof HeaderView) {
                i2 = this.recyclerListView.getChildAt(i4).getTop();
                break;
            } else {
                i4++;
            }
        }
        updateRows();
        if (this.headerRow >= 0 && i2 != 0) {
            ((LinearLayoutManager) this.recyclerListView.getLayoutManager()).scrollToPositionWithOffset(this.headerRow + 1, i2);
        }
        if (this.limitParams == null) {
            this.limitParams = getLimitParams(this.type, this.currentAccount);
        }
        int max = Math.max(this.inactiveChats.size(), this.limitParams.defaultLimit);
        LimitPreviewView limitPreviewView = this.limitPreviewView;
        if (limitPreviewView != null) {
            limitPreviewView.setIconValue(max, false);
            this.limitPreviewView.setBagePosition(max / this.limitParams.premiumLimit);
            this.limitPreviewView.startDelayedAnimation();
        }
    }

    private void setupBoostFeatures() {
        this.boostFeatures = new ArrayList<>();
        TL_stories$TL_premium_boostsStatus tL_stories$TL_premium_boostsStatus = this.boostsStatus;
        int i = 10;
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        if (messagesController != null) {
            MessagesController.PeerColors peerColors = messagesController.peerColors;
            int max = Math.max(10, peerColors != null ? peerColors.maxLevel() : 0);
            MessagesController.PeerColors peerColors2 = messagesController.profilePeerColors;
            i = Math.max(Math.max(Math.max(Math.max(Math.max(Math.max(max, peerColors2 != null ? peerColors2.maxLevel() : 0), messagesController.channelBgIconLevelMin), messagesController.channelProfileIconLevelMin), messagesController.channelEmojiStatusLevelMin), messagesController.channelWallpaperLevelMin), messagesController.channelCustomWallpaperLevelMin);
        }
        ArrayList<BoostFeature> arrayList = null;
        for (int i2 = tL_stories$TL_premium_boostsStatus != null ? 1 + tL_stories$TL_premium_boostsStatus.level : 1; i2 <= i; i2++) {
            ArrayList<BoostFeature> boostFeaturesForLevel = boostFeaturesForLevel(i2);
            if (arrayList == null || !BoostFeature.arraysEqual(arrayList, boostFeaturesForLevel)) {
                ArrayList<BoostFeature> arrayList2 = this.boostFeatures;
                arrayList2.add(new BoostFeature.BoostFeatureLevel(i2, arrayList2.isEmpty()));
                this.boostFeatures.addAll(boostFeaturesForLevel);
                arrayList = boostFeaturesForLevel;
            }
        }
    }

    private ArrayList<BoostFeature> boostFeaturesForLevel(int i) {
        ArrayList<BoostFeature> arrayList = new ArrayList<>();
        MessagesController messagesController = MessagesController.getInstance(this.currentAccount);
        if (messagesController == null) {
            return arrayList;
        }
        arrayList.add(BoostFeature.m60of(C3632R.C3634drawable.menu_feature_stories, "BoostFeatureStoriesPerDay", i));
        arrayList.add(BoostFeature.m60of(C3632R.C3634drawable.menu_feature_reactions, "BoostFeatureCustomReaction", i));
        MessagesController.PeerColors peerColors = messagesController.peerColors;
        int colorsAvailable = peerColors != null ? peerColors.colorsAvailable(i) : 0;
        MessagesController.PeerColors peerColors2 = messagesController.profilePeerColors;
        int colorsAvailable2 = peerColors2 != null ? peerColors2.colorsAvailable(i) : 0;
        if (colorsAvailable > 0) {
            arrayList.add(BoostFeature.m60of(C3632R.C3634drawable.menu_feature_color_name, "BoostFeatureNameColor", 7));
        }
        if (colorsAvailable > 0) {
            arrayList.add(BoostFeature.m60of(C3632R.C3634drawable.menu_feature_links, "BoostFeatureReplyColor", colorsAvailable));
        }
        if (i >= messagesController.channelBgIconLevelMin) {
            arrayList.add(BoostFeature.m62of(C3632R.C3634drawable.menu_feature_links2, C3632R.string.BoostFeatureReplyIcon));
        }
        if (i >= messagesController.channelEmojiStatusLevelMin) {
            arrayList.add(BoostFeature.m61of(C3632R.C3634drawable.menu_feature_status, C3632R.string.BoostFeatureEmojiStatuses, "1000+"));
        }
        if (colorsAvailable2 > 0) {
            arrayList.add(BoostFeature.m60of(C3632R.C3634drawable.menu_feature_color_profile, "BoostFeatureProfileColor", colorsAvailable2));
        }
        if (i >= messagesController.channelProfileIconLevelMin) {
            arrayList.add(BoostFeature.m62of(C3632R.C3634drawable.menu_feature_cover, C3632R.string.BoostFeatureProfileIcon));
        }
        if (i >= messagesController.channelWallpaperLevelMin) {
            arrayList.add(BoostFeature.m60of(C3632R.C3634drawable.menu_feature_wallpaper, "BoostFeatureBackground", 8));
        }
        if (i >= messagesController.channelCustomWallpaperLevelMin) {
            arrayList.add(BoostFeature.m62of(C3632R.C3634drawable.menu_feature_custombg, C3632R.string.BoostFeatureCustomBackground));
        }
        return arrayList;
    }

    /* renamed from: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$BoostFeatureCell */
    /* loaded from: classes6.dex */
    private class BoostFeatureCell extends FrameLayout {
        public BoostFeature feature;
        private final ImageView imageView;
        public BoostFeature.BoostFeatureLevel level;
        private final FrameLayout levelLayout;
        private final SimpleTextView levelTextView;
        private final Theme.ResourcesProvider resourcesProvider;
        private final SimpleTextView textView;

        public BoostFeatureCell(LimitReachedBottomSheet limitReachedBottomSheet, Context context, Theme.ResourcesProvider resourcesProvider) {
            super(context);
            this.resourcesProvider = resourcesProvider;
            setPadding(((BottomSheet) limitReachedBottomSheet).backgroundPaddingLeft, 0, ((BottomSheet) limitReachedBottomSheet).backgroundPaddingLeft, 0);
            ImageView imageView = new ImageView(context);
            this.imageView = imageView;
            imageView.setScaleType(ImageView.ScaleType.FIT_CENTER);
            imageView.setColorFilter(new PorterDuffColorFilter(Theme.getColor(Theme.key_premiumGradient1, resourcesProvider), PorterDuff.Mode.SRC_IN));
            addView(imageView, LayoutHelper.createFrame(24, 24, (LocaleController.isRTL ? 5 : 3) | 16, 24, 0, 24, 0));
            SimpleTextView simpleTextView = new SimpleTextView(context);
            this.textView = simpleTextView;
            simpleTextView.setWidthWrapContent(true);
            simpleTextView.setTextColor(Theme.getColor(Theme.key_dialogTextBlack, resourcesProvider));
            simpleTextView.setTextSize(14);
            boolean z = LocaleController.isRTL;
            addView(simpleTextView, LayoutHelper.createFrame(-2, -2, (z ? 5 : 3) | 16, z ? 30 : 60, 0, z ? 60 : 30, 0));
            SimpleTextView simpleTextView2 = new SimpleTextView(context);
            this.levelTextView = simpleTextView2;
            simpleTextView2.setTextColor(-1);
            simpleTextView2.setWidthWrapContent(true);
            simpleTextView2.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            simpleTextView2.setTextSize(14);
            FrameLayout frameLayout = new FrameLayout(context, limitReachedBottomSheet, resourcesProvider) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.BoostFeatureCell.1
                private final Paint dividerPaint;
                private final PremiumGradient.PremiumGradientTools gradientTools;
                final /* synthetic */ Theme.ResourcesProvider val$resourcesProvider;

                {
                    this.val$resourcesProvider = resourcesProvider;
                    this.gradientTools = new PremiumGradient.PremiumGradientTools(Theme.key_premiumGradient1, Theme.key_premiumGradient2, -1, -1, -1, resourcesProvider);
                    Paint paint = new Paint(1);
                    this.dividerPaint = paint;
                    paint.setStyle(Paint.Style.STROKE);
                    paint.setStrokeWidth(1.0f);
                }

                @Override // android.view.ViewGroup, android.view.View
                protected void dispatchDraw(Canvas canvas) {
                    this.dividerPaint.setColor(Theme.getColor(Theme.key_divider, this.val$resourcesProvider));
                    canvas.drawLine(AndroidUtilities.m107dp(18), getHeight() / 2.0f, BoostFeatureCell.this.levelTextView.getLeft() - AndroidUtilities.m107dp(20), getHeight() / 2.0f, this.dividerPaint);
                    canvas.drawLine(BoostFeatureCell.this.levelTextView.getRight() + AndroidUtilities.m107dp(20), getHeight() / 2.0f, getWidth() - AndroidUtilities.m107dp(18), getHeight() / 2.0f, this.dividerPaint);
                    RectF rectF = AndroidUtilities.rectTmp;
                    rectF.set(BoostFeatureCell.this.levelTextView.getLeft() - AndroidUtilities.m107dp(15), ((BoostFeatureCell.this.levelTextView.getTop() + BoostFeatureCell.this.levelTextView.getBottom()) - AndroidUtilities.m107dp(30)) / 2.0f, BoostFeatureCell.this.levelTextView.getRight() + AndroidUtilities.m107dp(15), ((BoostFeatureCell.this.levelTextView.getTop() + BoostFeatureCell.this.levelTextView.getBottom()) + AndroidUtilities.m107dp(30)) / 2.0f);
                    canvas.save();
                    canvas.translate(rectF.left, rectF.top);
                    rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, rectF.width(), rectF.height());
                    this.gradientTools.gradientMatrix(rectF);
                    canvas.drawRoundRect(rectF, AndroidUtilities.m107dp(15), AndroidUtilities.m107dp(15), this.gradientTools.paint);
                    canvas.restore();
                    super.dispatchDraw(canvas);
                }
            };
            this.levelLayout = frameLayout;
            frameLayout.setWillNotDraw(false);
            frameLayout.addView(simpleTextView2, LayoutHelper.createFrame(-2, -2, 17));
            addView(frameLayout, LayoutHelper.createFrame(-1, -1));
        }

        public void set(BoostFeature boostFeature) {
            if (boostFeature instanceof BoostFeature.BoostFeatureLevel) {
                this.level = (BoostFeature.BoostFeatureLevel) boostFeature;
                this.feature = null;
                this.imageView.setVisibility(8);
                this.textView.setVisibility(8);
                this.levelLayout.setVisibility(0);
                SimpleTextView simpleTextView = this.levelTextView;
                BoostFeature.BoostFeatureLevel boostFeatureLevel = this.level;
                simpleTextView.setText(LocaleController.formatPluralString(boostFeatureLevel.isFirst ? "BoostLevelUnlocks" : "BoostLevel", boostFeatureLevel.lvl, new Object[0]));
            } else if (boostFeature != null) {
                this.level = null;
                this.feature = boostFeature;
                this.imageView.setVisibility(0);
                this.imageView.setImageResource(this.feature.iconResId);
                this.textView.setVisibility(0);
                BoostFeature boostFeature2 = this.feature;
                if (boostFeature2.textKeyPlural != null) {
                    String string = LocaleController.getString(this.feature.textKeyPlural + "_" + LocaleController.getStringParamForNumber(this.feature.countPlural));
                    if (string == null || string.startsWith("LOC_ERR")) {
                        string = LocaleController.getString(this.feature.textKeyPlural + "_other");
                    }
                    if (string == null) {
                        string = "";
                    }
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(string);
                    int indexOf = string.indexOf("%d");
                    if (indexOf >= 0) {
                        spannableStringBuilder = new SpannableStringBuilder(string);
                        SpannableString spannableString = new SpannableString(this.feature.countPlural + "");
                        spannableString.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, spannableString.length(), 33);
                        spannableStringBuilder.replace(indexOf, indexOf + 2, (CharSequence) spannableString);
                    }
                    this.textView.setText(spannableStringBuilder);
                } else {
                    String string2 = LocaleController.getString(boostFeature2.textKey);
                    String str = string2 != null ? string2 : "";
                    if (this.feature.countValue != null) {
                        SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(str);
                        int indexOf2 = str.indexOf("%s");
                        if (indexOf2 >= 0) {
                            spannableStringBuilder2 = new SpannableStringBuilder(str);
                            SpannableString spannableString2 = new SpannableString(this.feature.countValue);
                            spannableString2.setSpan(new TypefaceSpan(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM)), 0, spannableString2.length(), 33);
                            spannableStringBuilder2.replace(indexOf2, indexOf2 + 2, (CharSequence) spannableString2);
                        }
                        this.textView.setText(spannableStringBuilder2);
                    } else {
                        this.textView.setText(str);
                    }
                }
                this.levelLayout.setVisibility(8);
            }
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m107dp(this.level != null ? 49 : 36), 1073741824));
        }
    }
}
