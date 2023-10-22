package org.telegram.p042ui.Components.Premium;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
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
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3630R;
import org.telegram.messenger.ChannelBoostsController;
import org.telegram.messenger.ChatObject;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.UserConfig;
import org.telegram.p042ui.ActionBar.AlertDialog;
import org.telegram.p042ui.ActionBar.BaseFragment;
import org.telegram.p042ui.ActionBar.BottomSheet;
import org.telegram.p042ui.ActionBar.Theme;
import org.telegram.p042ui.Cells.AdminedChannelCell;
import org.telegram.p042ui.Cells.GroupCreateUserCell;
import org.telegram.p042ui.Cells.HeaderCell;
import org.telegram.p042ui.Cells.ShadowSectionCell;
import org.telegram.p042ui.ChatActivity;
import org.telegram.p042ui.Components.AvatarDrawable;
import org.telegram.p042ui.Components.BackupImageView;
import org.telegram.p042ui.Components.BottomSheetWithRecyclerListView;
import org.telegram.p042ui.Components.BulletinFactory;
import org.telegram.p042ui.Components.ColoredImageSpan;
import org.telegram.p042ui.Components.CubicBezierInterpolator;
import org.telegram.p042ui.Components.FireworksOverlay;
import org.telegram.p042ui.Components.FlickerLoadingView;
import org.telegram.p042ui.Components.LayoutHelper;
import org.telegram.p042ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p042ui.Components.RecyclerItemsEnterAnimator;
import org.telegram.p042ui.Components.RecyclerListView;
import org.telegram.p042ui.PremiumPreviewFragment;
import org.telegram.p042ui.Stories.ChannelBoostUtilities;
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
import org.telegram.tgnet.TLRPC$TL_stories_boostsStatus;
import org.telegram.tgnet.TLRPC$User;
/* renamed from: org.telegram.ui.Components.Premium.LimitReachedBottomSheet */
/* loaded from: classes6.dex */
public class LimitReachedBottomSheet extends BottomSheetWithRecyclerListView {
    private TLRPC$TL_stories_boostsStatus boostsStatus;
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
    public Runnable onShowPremiumScreenRunnable;
    public Runnable onSuccessRunnable;
    BaseFragment parentFragment;
    public boolean parentIsChannel;
    PremiumButtonView premiumButtonView;
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
        return i == 0 || i == 3 || i == 4 || i == 6 || i == 7 || i == 12 || i == 13 || i == 14 || i == 15 || i == 16 || i == 18 || i == 19;
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

    public LimitReachedBottomSheet(BaseFragment baseFragment, Context context, int i, int i2, Theme.ResourcesProvider resourcesProvider) {
        super(baseFragment, false, hasFixedSize(i), false, resourcesProvider);
        this.linkRow = -1;
        this.chats = new ArrayList<>();
        this.headerRow = -1;
        this.dividerRow = -1;
        this.chatsTitleRow = -1;
        this.chatStartRow = -1;
        this.chatEndRow = -1;
        this.loadingRow = -1;
        this.emptyViewDividerRow = -1;
        this.currentValue = -1;
        this.selectedChats = new HashSet<>();
        this.inactiveChats = new ArrayList<>();
        this.inactiveChatsSignatures = new ArrayList<>();
        this.restrictedUsers = new ArrayList<>();
        this.loading = false;
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
    }

    @Override // org.telegram.p042ui.Components.BottomSheetWithRecyclerListView
    public void onViewCreated(FrameLayout frameLayout) {
        super.onViewCreated(frameLayout);
        final Context context = frameLayout.getContext();
        this.premiumButtonView = new PremiumButtonView(context, true, this.resourcesProvider);
        if (!this.hasFixedSize) {
            View view = new View(context) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.1
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
        this.recyclerListView.setPadding(0, 0, 0, AndroidUtilities.m102dp(72));
        this.recyclerListView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda16
            @Override // org.telegram.p042ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view2, int i) {
                LimitReachedBottomSheet.this.lambda$onViewCreated$0(view2, i);
            }
        });
        this.recyclerListView.setOnItemLongClickListener(new RecyclerListView.OnItemLongClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda17
            @Override // org.telegram.p042ui.Components.RecyclerListView.OnItemLongClickListener
            public final boolean onItemClick(View view2, int i) {
                boolean lambda$onViewCreated$1;
                lambda$onViewCreated$1 = LimitReachedBottomSheet.this.lambda$onViewCreated$1(view2, i);
                return lambda$onViewCreated$1;
            }
        });
        this.premiumButtonView.buttonLayout.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda9
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LimitReachedBottomSheet.this.lambda$onViewCreated$8(context, view2);
            }
        });
        this.premiumButtonView.overlayTextView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                LimitReachedBottomSheet.this.lambda$onViewCreated$9(view2);
            }
        });
        this.enterAnimator = new RecyclerItemsEnterAnimator(this.recyclerListView, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$0(View view, int i) {
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
    public /* synthetic */ boolean lambda$onViewCreated$1(View view, int i) {
        this.recyclerListView.getOnItemClickListener().onItemClick(view, i);
        view.performHapticFeedback(0);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$8(Context context, View view) {
        String str;
        int i = this.type;
        if (i == 11) {
            return;
        }
        if (i != 19) {
            if (i == 18) {
                AndroidUtilities.addToClipboard(getBoostLink());
                dismiss();
                return;
            } else if (UserConfig.getInstance(this.currentAccount).isPremium() || MessagesController.getInstance(this.currentAccount).premiumLocked || this.isVeryLargeFile) {
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
        this.canApplyBoost.checkTime();
        if (!UserConfig.getInstance(this.currentAccount).isPremium()) {
            AlertDialog.Builder builder = new AlertDialog.Builder(context);
            builder.setTitle(LocaleController.getString("PremiumNeeded", C3630R.string.PremiumNeeded));
            builder.setSubtitle(AndroidUtilities.replaceTags(LocaleController.getString("PremiumNeededForBoosting", C3630R.string.PremiumNeededForBoosting)));
            builder.setPositiveButton(LocaleController.getString("CheckPhoneNumberYes", C3630R.string.CheckPhoneNumberYes), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    LimitReachedBottomSheet.this.lambda$onViewCreated$2(dialogInterface, i2);
                }
            });
            builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda6
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                }
            });
            builder.show();
            return;
        }
        ChannelBoostsController.CanApplyBoost canApplyBoost = this.canApplyBoost;
        boolean z = canApplyBoost.canApply;
        if (z && canApplyBoost.replaceDialogId == 0) {
            boostChannel();
        } else if (canApplyBoost.giftedPremium) {
            AlertDialog.Builder builder2 = new AlertDialog.Builder(context);
            builder2.setTitle(LocaleController.getString("CantBoostWithGiftedPremium", C3630R.string.CantBoostWithGiftedPremium));
            builder2.setSubtitle(AndroidUtilities.replaceTags(LocaleController.formatString("CantBoostWithGiftedPremiumDescription ", C3630R.string.CantBoostWithGiftedPremiumDescription, new Object[0])));
            builder2.setPositiveButton(LocaleController.getString("OK", C3630R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda4
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                }
            });
            builder2.show();
        } else if (z) {
            FrameLayout frameLayout = new FrameLayout(getContext());
            BackupImageView backupImageView = new BackupImageView(getContext());
            backupImageView.setRoundRadius(AndroidUtilities.m102dp(30));
            frameLayout.addView(backupImageView, LayoutHelper.createFrame(60, 60));
            frameLayout.setClipChildren(false);
            final Paint paint = new Paint(1);
            paint.setColor(Theme.getColor(Theme.key_dialogBackground));
            final Drawable drawable = ContextCompat.getDrawable(getContext(), C3630R.C3632drawable.filled_limit_boost);
            frameLayout.addView(new View(this, getContext()) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.2
                @Override // android.view.View
                protected void onDraw(Canvas canvas) {
                    float measuredWidth = getMeasuredWidth() / 2.0f;
                    float measuredHeight = getMeasuredHeight() / 2.0f;
                    canvas.drawCircle(measuredWidth, measuredHeight, getMeasuredWidth() / 2.0f, paint);
                    PremiumGradient.getInstance().updateMainGradientMatrix(0, 0, getMeasuredWidth(), getMeasuredHeight(), -AndroidUtilities.m102dp(10), BitmapDescriptorFactory.HUE_RED);
                    canvas.drawCircle(measuredWidth, measuredHeight, (getMeasuredWidth() / 2.0f) - AndroidUtilities.m102dp(2), PremiumGradient.getInstance().getMainGradientPaint());
                    float m102dp = AndroidUtilities.m102dp(18) / 2.0f;
                    drawable.setBounds((int) (measuredWidth - m102dp), (int) (measuredHeight - m102dp), (int) (measuredWidth + m102dp), (int) (measuredHeight + m102dp));
                    drawable.draw(canvas);
                }
            }, LayoutHelper.createFrame(28, 28, 0, 34, 34, 0, 0));
            ImageView imageView = new ImageView(getContext());
            imageView.setImageResource(C3630R.C3632drawable.msg_arrow_avatar);
            imageView.setColorFilter(Theme.getColor(Theme.key_windowBackgroundWhiteGrayIcon));
            frameLayout.addView(imageView, LayoutHelper.createFrame(24, 24, 17));
            BackupImageView backupImageView2 = new BackupImageView(getContext());
            backupImageView2.setRoundRadius(AndroidUtilities.m102dp(30));
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
            avatarDrawable.setInfo(chat);
            backupImageView.setForUserOrChat(chat, avatarDrawable);
            AvatarDrawable avatarDrawable2 = new AvatarDrawable();
            TLRPC$Chat chat2 = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
            avatarDrawable2.setInfo(chat2);
            backupImageView2.setForUserOrChat(chat2, avatarDrawable2);
            AlertDialog.Builder builder3 = new AlertDialog.Builder(context);
            builder3.setView(frameLayout2);
            textView.setText(AndroidUtilities.replaceTags(LocaleController.formatString("ReplaceBoostChannelDescription", C3630R.string.ReplaceBoostChannelDescription, chat.title, chat2.title)));
            builder3.setPositiveButton(LocaleController.getString("Replace", C3630R.string.Replace), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    LimitReachedBottomSheet.this.lambda$onViewCreated$5(dialogInterface, i2);
                }
            });
            builder3.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda5
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i2) {
                    dialogInterface.dismiss();
                }
            });
            builder3.show();
        } else {
            int i2 = canApplyBoost.floodWait;
            if (i2 != 0) {
                if (i2 < 60) {
                    str = LocaleController.formatPluralString("Seconds", i2, new Object[0]);
                } else if (i2 < 3600) {
                    str = LocaleController.formatPluralString("Minutes", i2 / 60, new Object[0]);
                } else {
                    int i3 = (i2 / 60) / 60;
                    if (i3 > 2) {
                        str = LocaleController.formatPluralString("Hours", i3, new Object[0]);
                    } else {
                        str = LocaleController.formatPluralString("Hours", i3, new Object[0]) + " " + LocaleController.formatPluralString("Minutes", i2 % 60, new Object[0]);
                    }
                }
                AlertDialog.Builder builder4 = new AlertDialog.Builder(context);
                builder4.setTitle(LocaleController.getString("CantBoostTooOften", C3630R.string.CantBoostTooOften));
                builder4.setSubtitle(AndroidUtilities.replaceTags(LocaleController.formatString("CantBoostTooOftenDescription", C3630R.string.CantBoostTooOftenDescription, str)));
                builder4.setPositiveButton(LocaleController.getString("OK", C3630R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda7
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i4) {
                        dialogInterface.dismiss();
                    }
                });
                builder4.show();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$2(DialogInterface dialogInterface, int i) {
        this.parentFragment.showDialog(new PremiumFeatureBottomSheet(this.parentFragment, 14, false));
        dismiss();
        dialogInterface.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$5(DialogInterface dialogInterface, int i) {
        dialogInterface.dismiss();
        boostChannel();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$onViewCreated$9(View view) {
        int i = this.type;
        if (i == 19) {
            dismiss();
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

    private void boostChannel() {
        TransitionSet transitionSet = new TransitionSet();
        transitionSet.addTransition(new Visibility(this) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.3
            @Override // android.transition.Visibility
            public Animator onAppear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, BitmapDescriptorFactory.HUE_RED, 1.0f), ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, AndroidUtilities.m102dp(20), BitmapDescriptorFactory.HUE_RED));
                animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                return animatorSet;
            }

            @Override // android.transition.Visibility
            public Animator onDisappear(ViewGroup viewGroup, View view, TransitionValues transitionValues, TransitionValues transitionValues2) {
                AnimatorSet animatorSet = new AnimatorSet();
                animatorSet.playTogether(ObjectAnimator.ofFloat(view, View.ALPHA, view.getAlpha(), BitmapDescriptorFactory.HUE_RED), ObjectAnimator.ofFloat(view, View.TRANSLATION_Y, BitmapDescriptorFactory.HUE_RED, -AndroidUtilities.m102dp(20)));
                animatorSet.setInterpolator(CubicBezierInterpolator.DEFAULT);
                return animatorSet;
            }
        });
        transitionSet.setOrdering(0);
        TransitionManager.beginDelayedTransition(this.headerView, transitionSet);
        MessagesController.getInstance(this.currentAccount).getBoostsController().applyBoost(this.dialogId);
        LimitPreviewView limitPreviewView = this.limitPreviewView;
        TLRPC$TL_stories_boostsStatus tLRPC$TL_stories_boostsStatus = this.boostsStatus;
        int i = tLRPC$TL_stories_boostsStatus.next_level_boosts;
        int i2 = tLRPC$TL_stories_boostsStatus.level;
        limitPreviewView.increaseCurrentValue((tLRPC$TL_stories_boostsStatus.boosts + 1) - (i * i2), i - (i2 * i));
        TLRPC$TL_stories_boostsStatus tLRPC$TL_stories_boostsStatus2 = this.boostsStatus;
        int i3 = tLRPC$TL_stories_boostsStatus2.boosts + 1;
        tLRPC$TL_stories_boostsStatus2.boosts = i3;
        if (tLRPC$TL_stories_boostsStatus2.next_level_boosts == i3) {
            tLRPC$TL_stories_boostsStatus2.level++;
            tLRPC$TL_stories_boostsStatus2.current_level_boosts = i3;
        }
        this.canApplyBoost.alreadyActive = true;
        this.headerView.recreateTitleAndDescription();
        this.headerView.title.setText(getBoostsTitleString());
        this.headerView.description.setText(AndroidUtilities.replaceTags(getBoostsDescriptionString()));
        updateButton();
        this.fireworksOverlay.start();
        this.fireworksOverlay.performHapticFeedback(3);
    }

    private void sendInviteMessages() {
        String str;
        TLRPC$ChatFull chatFull = MessagesController.getInstance(this.currentAccount).getChatFull(this.fromChat.f1600id);
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
            SendMessagesHelper.getInstance(this.currentAccount).sendMessage(SendMessagesHelper.SendMessageParams.m90of(str, ((TLRPC$User) it.next()).f1762id, null, null, null, true, null, null, null, false, 0, null, false, null));
        }
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda10
            @Override // java.lang.Runnable
            public final void run() {
                LimitReachedBottomSheet.this.lambda$sendInviteMessages$10();
            }
        });
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$sendInviteMessages$10() {
        BulletinFactory global = BulletinFactory.global();
        if (global != null) {
            if (this.selectedChats.size() == 1) {
                global.createSimpleBulletin(C3630R.raw.voip_invite, AndroidUtilities.replaceTags(LocaleController.formatString("InviteLinkSentSingle", C3630R.string.InviteLinkSentSingle, ContactsController.formatName((TLRPC$User) this.selectedChats.iterator().next())))).show();
            } else {
                global.createSimpleBulletin(C3630R.raw.voip_invite, AndroidUtilities.replaceTags(LocaleController.formatPluralString("InviteLinkSent", this.selectedChats.size(), Integer.valueOf(this.selectedChats.size())))).show();
            }
        }
    }

    public void updatePremiumButtonText() {
        int i = this.type;
        if (i == 19) {
            this.premiumButtonView.buttonTextView.setText(LocaleController.getString("BoostChannel", C3630R.string.BoostChannel));
        } else if (i == 18) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder("d ");
            spannableStringBuilder.setSpan(new ColoredImageSpan(C3630R.C3632drawable.msg_copy_filled), 0, 1, 0);
            spannableStringBuilder.append((CharSequence) LocaleController.getString("CopyLink", C3630R.string.CopyLink));
            this.premiumButtonView.buttonTextView.setText(spannableStringBuilder);
        } else if (UserConfig.getInstance(this.currentAccount).isPremium() || MessagesController.getInstance(this.currentAccount).premiumLocked || this.isVeryLargeFile) {
            this.premiumButtonView.buttonTextView.setText(LocaleController.getString("OK", C3630R.string.OK));
            this.premiumButtonView.hideIcon();
        } else {
            this.premiumButtonView.buttonTextView.setText(LocaleController.getString("IncreaseLimit", C3630R.string.IncreaseLimit));
            LimitParams limitParams = this.limitParams;
            if (limitParams != null) {
                int i2 = limitParams.defaultLimit;
                int i3 = i2 + 1;
                int i4 = limitParams.premiumLimit;
                if (i3 == i4) {
                    this.premiumButtonView.setIcon(C3630R.raw.addone_icon);
                    return;
                } else if (i2 != 0 && i4 != 0 && i4 / i2 >= 1.6f && i4 / i2 <= 2.5f) {
                    this.premiumButtonView.setIcon(C3630R.raw.double_icon);
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
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("ChannelLeaveAlertWithName", C3630R.string.ChannelLeaveAlertWithName, ((TLRPC$Chat) arrayList.get(0)).title)));
        } else {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("ChatsLeaveAlert", C3630R.string.ChatsLeaveAlert, new Object[0])));
        }
        builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("RevokeButton", C3630R.string.RevokeButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda3
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i) {
                LimitReachedBottomSheet.this.lambda$leaveFromSelectedGroups$11(arrayList, user, dialogInterface, i);
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
    public /* synthetic */ void lambda$leaveFromSelectedGroups$11(ArrayList arrayList, TLRPC$User tLRPC$User, DialogInterface dialogInterface, int i) {
        dismiss();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) arrayList.get(i2);
            MessagesController.getInstance(this.currentAccount).putChat(tLRPC$Chat, false);
            MessagesController.getInstance(this.currentAccount).deleteParticipantFromChat(tLRPC$Chat.f1600id, tLRPC$User);
        }
    }

    private void updateButton() {
        int i = this.type;
        if (i == 19) {
            if (this.canApplyBoost.alreadyActive) {
                this.premiumButtonView.setOverlayText(LocaleController.getString("OK", C3630R.string.OK), true, true);
            } else {
                this.premiumButtonView.clearOverlayText();
            }
        } else if (i == 11) {
            this.premiumButtonView.checkCounterView();
            if (!this.canSendLink) {
                this.premiumButtonView.setOverlayText(LocaleController.getString("Close", C3630R.string.Close), true, true);
            } else if (this.selectedChats.size() > 0) {
                this.premiumButtonView.setOverlayText(LocaleController.getString("SendInviteLink", C3630R.string.SendInviteLink), true, true);
            } else {
                this.premiumButtonView.setOverlayText(LocaleController.getString("ActionSkip", C3630R.string.ActionSkip), true, true);
            }
            this.premiumButtonView.counterView.setCount(this.selectedChats.size(), true);
            this.premiumButtonView.invalidate();
        } else if (this.selectedChats.size() > 0) {
            String str = null;
            int i2 = this.type;
            if (i2 == 2) {
                str = LocaleController.formatPluralString("RevokeLinks", this.selectedChats.size(), new Object[0]);
            } else if (i2 == 5) {
                str = LocaleController.formatPluralString("LeaveCommunities", this.selectedChats.size(), new Object[0]);
            }
            this.premiumButtonView.setOverlayText(str, true, true);
        } else {
            this.premiumButtonView.clearOverlayText();
        }
    }

    @Override // org.telegram.p042ui.Components.BottomSheetWithRecyclerListView
    public CharSequence getTitle() {
        if (this.type == 11) {
            return LocaleController.getString("ChannelInviteViaLink", C3630R.string.ChannelInviteViaLink);
        }
        return LocaleController.getString("LimitReached", C3630R.string.LimitReached);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$4 */
    /* loaded from: classes6.dex */
    public class C53454 extends RecyclerListView.SelectionAdapter {
        C53454() {
        }

        @Override // org.telegram.p042ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            LimitReachedBottomSheet limitReachedBottomSheet = LimitReachedBottomSheet.this;
            if (limitReachedBottomSheet.type != 11 || limitReachedBottomSheet.canSendLink) {
                return viewHolder.getItemViewType() == 1 || viewHolder.getItemViewType() == 4;
            }
            return false;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            FrameLayout frameLayout;
            Context context = viewGroup.getContext();
            switch (i) {
                case 1:
                    frameLayout = new AdminedChannelCell(context, new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.4.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.add(((AdminedChannelCell) view.getParent()).getCurrentChannel());
                            LimitReachedBottomSheet.this.revokeLinks(arrayList);
                        }
                    }, true, 9);
                    break;
                case 2:
                    frameLayout = new ShadowSectionCell(context, 12, Theme.getColor(Theme.key_windowBackgroundGray, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                    break;
                case 3:
                    View headerCell = new HeaderCell(context);
                    headerCell.setPadding(0, 0, 0, AndroidUtilities.m102dp(8));
                    frameLayout = headerCell;
                    break;
                case 4:
                    frameLayout = new GroupCreateUserCell(context, 1, 8, false);
                    break;
                case 5:
                    FlickerLoadingView flickerLoadingView = new FlickerLoadingView(context, null);
                    flickerLoadingView.setViewType(LimitReachedBottomSheet.this.type == 2 ? 22 : 21);
                    flickerLoadingView.setIsSingleCell(true);
                    flickerLoadingView.setIgnoreHeightCheck(true);
                    flickerLoadingView.setItemsCount(10);
                    frameLayout = flickerLoadingView;
                    break;
                case 6:
                    frameLayout = new View(this, LimitReachedBottomSheet.this.getContext()) { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet.4.2
                        @Override // android.view.View
                        protected void onMeasure(int i2, int i3) {
                            super.onMeasure(i2, View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m102dp(16), 1073741824));
                        }
                    };
                    break;
                case 7:
                    FrameLayout frameLayout2 = new FrameLayout(LimitReachedBottomSheet.this.getContext());
                    TextView textView = new TextView(context);
                    textView.setPadding(AndroidUtilities.m102dp(18), AndroidUtilities.m102dp(13), AndroidUtilities.m102dp(50), AndroidUtilities.m102dp(13));
                    textView.setTextSize(1, 16.0f);
                    textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
                    textView.setSingleLine(true);
                    frameLayout2.addView(textView, LayoutHelper.createFrame(-1, -2, 0, 11, 0, 11, 0));
                    int m102dp = AndroidUtilities.m102dp(8);
                    int color = Theme.getColor(Theme.key_graySection, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider);
                    int i2 = Theme.key_listSelector;
                    textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(m102dp, color, ColorUtils.setAlphaComponent(Theme.getColor(i2, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider), 76)));
                    textView.setTextColor(Theme.getColor(Theme.key_windowBackgroundWhiteBlackText, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                    textView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$4$$ExternalSyntheticLambda1
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            LimitReachedBottomSheet.C53454.this.lambda$onCreateViewHolder$0(view);
                        }
                    });
                    if (LimitReachedBottomSheet.this.statisticClickRunnable != null) {
                        ImageView imageView = new ImageView(LimitReachedBottomSheet.this.getContext());
                        imageView.setImageResource(C3630R.C3632drawable.msg_stats);
                        imageView.setColorFilter(Theme.getColor(Theme.key_dialogTextBlack, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
                        imageView.setPadding(AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8), AndroidUtilities.m102dp(8));
                        imageView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(AndroidUtilities.m102dp(20), 0, ColorUtils.setAlphaComponent(Theme.getColor(i2, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider), 76)));
                        frameLayout2.addView(imageView, LayoutHelper.createFrame(40, 40, 21, 15, 0, 15, 0));
                        imageView.setOnClickListener(new View.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$4$$ExternalSyntheticLambda0
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                LimitReachedBottomSheet.C53454.this.lambda$onCreateViewHolder$1(view);
                            }
                        });
                    }
                    textView.setText(LimitReachedBottomSheet.this.getBoostLink());
                    textView.setGravity(17);
                    frameLayout = frameLayout2;
                    break;
                default:
                    frameLayout = LimitReachedBottomSheet.this.headerView = new HeaderView(context);
                    break;
            }
            frameLayout.setLayoutParams(new RecyclerView.LayoutParams(-1, -2));
            return new RecyclerListView.Holder(frameLayout);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$0(View view) {
            AndroidUtilities.addToClipboard(LimitReachedBottomSheet.this.getBoostLink());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$onCreateViewHolder$1(View view) {
            LimitReachedBottomSheet.this.statisticClickRunnable.run();
            LimitReachedBottomSheet.this.dismiss();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            if (viewHolder.getItemViewType() == 4) {
                GroupCreateUserCell groupCreateUserCell = (GroupCreateUserCell) viewHolder.itemView;
                LimitReachedBottomSheet limitReachedBottomSheet = LimitReachedBottomSheet.this;
                int i2 = limitReachedBottomSheet.type;
                if (i2 == 5) {
                    TLRPC$Chat tLRPC$Chat = (TLRPC$Chat) limitReachedBottomSheet.inactiveChats.get(i - LimitReachedBottomSheet.this.chatStartRow);
                    groupCreateUserCell.setObject(tLRPC$Chat, tLRPC$Chat.title, (String) LimitReachedBottomSheet.this.inactiveChatsSignatures.get(i - LimitReachedBottomSheet.this.chatStartRow), ((float) i) != ((float) LimitReachedBottomSheet.this.chatEndRow) - 1.0f);
                    groupCreateUserCell.setChecked(LimitReachedBottomSheet.this.selectedChats.contains(tLRPC$Chat), false);
                } else if (i2 == 11) {
                    TLRPC$User tLRPC$User = (TLRPC$User) limitReachedBottomSheet.restrictedUsers.get(i - LimitReachedBottomSheet.this.chatStartRow);
                    groupCreateUserCell.setObject(tLRPC$User, ContactsController.formatName(tLRPC$User.first_name, tLRPC$User.last_name), LocaleController.formatUserStatus(((BottomSheet) LimitReachedBottomSheet.this).currentAccount, tLRPC$User, null, null), ((float) i) != ((float) LimitReachedBottomSheet.this.chatEndRow) - 1.0f);
                    groupCreateUserCell.setChecked(LimitReachedBottomSheet.this.selectedChats.contains(tLRPC$User), false);
                }
            } else if (viewHolder.getItemViewType() == 1) {
                LimitReachedBottomSheet limitReachedBottomSheet2 = LimitReachedBottomSheet.this;
                TLRPC$Chat tLRPC$Chat2 = limitReachedBottomSheet2.chats.get(i - limitReachedBottomSheet2.chatStartRow);
                AdminedChannelCell adminedChannelCell = (AdminedChannelCell) viewHolder.itemView;
                TLRPC$Chat currentChannel = adminedChannelCell.getCurrentChannel();
                adminedChannelCell.setChannel(tLRPC$Chat2, false);
                adminedChannelCell.setChecked(LimitReachedBottomSheet.this.selectedChats.contains(tLRPC$Chat2), currentChannel == tLRPC$Chat2);
            } else if (viewHolder.getItemViewType() == 3) {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                LimitReachedBottomSheet limitReachedBottomSheet3 = LimitReachedBottomSheet.this;
                int i3 = limitReachedBottomSheet3.type;
                if (i3 != 11) {
                    if (i3 == 2) {
                        headerCell.setText(LocaleController.getString("YourPublicCommunities", C3630R.string.YourPublicCommunities));
                    } else {
                        headerCell.setText(LocaleController.getString("LastActiveCommunities", C3630R.string.LastActiveCommunities));
                    }
                } else if (!limitReachedBottomSheet3.canSendLink) {
                    if (LimitReachedBottomSheet.this.restrictedUsers.size() == 1) {
                        headerCell.setText(LocaleController.getString("ChannelInviteViaLinkRestricted2", C3630R.string.ChannelInviteViaLinkRestricted2));
                    } else {
                        headerCell.setText(LocaleController.getString("ChannelInviteViaLinkRestricted3", C3630R.string.ChannelInviteViaLinkRestricted3));
                    }
                } else {
                    headerCell.setText(LocaleController.getString("ChannelInviteViaLink", C3630R.string.ChannelInviteViaLink));
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
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
            int i2 = LimitReachedBottomSheet.this.type;
            return (i2 == 5 || i2 == 11) ? 4 : 1;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return LimitReachedBottomSheet.this.rowCount;
        }
    }

    @Override // org.telegram.p042ui.Components.BottomSheetWithRecyclerListView
    public RecyclerListView.SelectionAdapter createAdapter() {
        return new C53454();
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

    public void setBoostsStats(TLRPC$TL_stories_boostsStatus tLRPC$TL_stories_boostsStatus, boolean z) {
        this.boostsStatus = tLRPC$TL_stories_boostsStatus;
        this.isCurrentChat = z;
    }

    public void setCanApplyBoost(ChannelBoostsController.CanApplyBoost canApplyBoost) {
        this.canApplyBoost = canApplyBoost;
        updateButton();
    }

    public void showStatisticButtonInLink(Runnable runnable) {
        this.statisticClickRunnable = runnable;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$HeaderView */
    /* loaded from: classes6.dex */
    public class HeaderView extends LinearLayout {
        TextView description;
        TextView title;

        /* JADX WARN: Removed duplicated region for block: B:100:0x031c  */
        /* JADX WARN: Removed duplicated region for block: B:113:0x036e  */
        /* JADX WARN: Removed duplicated region for block: B:114:0x0378  */
        /* JADX WARN: Removed duplicated region for block: B:132:0x040d  */
        /* JADX WARN: Removed duplicated region for block: B:140:0x04ec  */
        /* JADX WARN: Removed duplicated region for block: B:141:0x04fc  */
        /* JADX WARN: Removed duplicated region for block: B:46:0x021a  */
        /* JADX WARN: Removed duplicated region for block: B:47:0x022a  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0234  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public HeaderView(android.content.Context r30) {
            /*
                Method dump skipped, instructions count: 1312
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: org.telegram.p042ui.Components.Premium.LimitReachedBottomSheet.HeaderView.<init>(org.telegram.ui.Components.Premium.LimitReachedBottomSheet, android.content.Context):void");
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void lambda$new$0(View view) {
            LimitReachedBottomSheet.this.getBaseFragment().presentFragment(ChatActivity.m64of(LimitReachedBottomSheet.this.dialogId));
            LimitReachedBottomSheet.this.dismiss();
        }

        public void recreateTitleAndDescription() {
            int indexOfChild = indexOfChild(this.title);
            int indexOfChild2 = indexOfChild(this.description);
            removeView(this.title);
            TextView textView = new TextView(getContext());
            this.title = textView;
            textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
            this.title.setTextSize(1, 20.0f);
            TextView textView2 = this.title;
            int i = Theme.key_windowBackgroundWhiteBlackText;
            textView2.setTextColor(Theme.getColor(i, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
            this.title.setGravity(17);
            addView(this.title, indexOfChild, LayoutHelper.createLinear(-2, -2, 1, 0, 22, 0, 10));
            removeView(this.description);
            TextView textView3 = new TextView(getContext());
            this.description = textView3;
            textView3.setTextSize(1, 14.0f);
            this.description.setGravity(1);
            this.description.setTextColor(Theme.getColor(i, ((BottomSheet) LimitReachedBottomSheet.this).resourcesProvider));
            addView(this.description, indexOfChild2, LayoutHelper.createLinear(-2, -2, 1, 24, 0, 24, 24));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBoostsTitleString() {
        TLRPC$TL_stories_boostsStatus tLRPC$TL_stories_boostsStatus = this.boostsStatus;
        if (tLRPC$TL_stories_boostsStatus.level > 0 && !this.canApplyBoost.alreadyActive) {
            return LocaleController.getString("HelpUpgradeChannel", C3630R.string.HelpUpgradeChannel);
        }
        if (tLRPC$TL_stories_boostsStatus.next_level_boosts == 0) {
            return LocaleController.formatString("BoostsMaxLevelReached", C3630R.string.BoostsMaxLevelReached, new Object[0]);
        }
        if (this.isCurrentChat) {
            TLRPC$Chat chat = MessagesController.getInstance(this.currentAccount).getChat(Long.valueOf(-this.dialogId));
            return this.canApplyBoost.alreadyActive ? LocaleController.formatString("YouBoostedChannel2", C3630R.string.YouBoostedChannel2, chat.title) : LocaleController.formatString("BoostingEnableStoriesForChannel2", C3630R.string.BoostingEnableStoriesForChannel2, chat.title);
        } else if (this.canApplyBoost.alreadyActive) {
            return LocaleController.getString("YouBoostedChannel", C3630R.string.YouBoostedChannel);
        } else {
            return LocaleController.getString("BoostingEnableStoriesForChannel", C3630R.string.BoostingEnableStoriesForChannel);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getBoostsDescriptionString() {
        TLRPC$TL_stories_boostsStatus tLRPC$TL_stories_boostsStatus = this.boostsStatus;
        int i = tLRPC$TL_stories_boostsStatus.boosts;
        if ((i == tLRPC$TL_stories_boostsStatus.current_level_boosts) && this.canApplyBoost.alreadyActive) {
            int i2 = tLRPC$TL_stories_boostsStatus.level;
            if (i2 == 1) {
                return LocaleController.formatString("ChannelBoostsJustReachedLevel1", C3630R.string.ChannelBoostsJustReachedLevel1, new Object[0]);
            }
            return LocaleController.formatString("ChannelBoostsJustReachedLevelNext", C3630R.string.ChannelBoostsJustReachedLevelNext, Integer.valueOf(i2), LocaleController.formatPluralString("BoostStories", this.boostsStatus.level, new Object[0]));
        } else if (this.canApplyBoost.alreadyActive) {
            if (tLRPC$TL_stories_boostsStatus.level == 0) {
                int i3 = C3630R.string.ChannelNeedBoostsAlreadyBoostedDescriptionLevel1;
                int i4 = tLRPC$TL_stories_boostsStatus.next_level_boosts;
                return LocaleController.formatString("ChannelNeedBoostsAlreadyBoostedDescriptionLevel1", i3, LocaleController.formatPluralString("MoreBoosts", i4 - i, Integer.valueOf(i4 - i)));
            }
            int i5 = C3630R.string.ChannelNeedBoostsDescriptionLevelNext;
            int i6 = tLRPC$TL_stories_boostsStatus.next_level_boosts;
            return LocaleController.formatString("ChannelNeedBoostsDescriptionLevelNext", i5, LocaleController.formatPluralString("MoreBoosts", i6 - i, Integer.valueOf(i6 - i)), LocaleController.formatPluralString("BoostStories", this.boostsStatus.level, new Object[0]));
        } else if (tLRPC$TL_stories_boostsStatus.level == 0) {
            int i7 = C3630R.string.ChannelNeedBoostsDescriptionLevel1;
            int i8 = tLRPC$TL_stories_boostsStatus.next_level_boosts;
            return LocaleController.formatString("ChannelNeedBoostsDescriptionLevel1", i7, LocaleController.formatPluralString("MoreBoosts", i8 - i, Integer.valueOf(i8 - i)));
        } else {
            int i9 = C3630R.string.ChannelNeedBoostsDescriptionLevelNext;
            int i10 = tLRPC$TL_stories_boostsStatus.next_level_boosts;
            return LocaleController.formatString("ChannelNeedBoostsDescriptionLevelNext", i9, LocaleController.formatPluralString("MoreBoosts", i10 - i, Integer.valueOf(i10 - i)), LocaleController.formatPluralString("BoostStories", this.boostsStatus.level, new Object[0]));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static LimitParams getLimitParams(int i, int i2) {
        LimitParams limitParams = new LimitParams();
        if (i == 0) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).dialogFiltersPinnedLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).dialogFiltersPinnedLimitPremium;
            limitParams.icon = C3630R.C3632drawable.msg_limit_pin;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedPinDialogs", C3630R.string.LimitReachedPinDialogs, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedPinDialogsPremium", C3630R.string.LimitReachedPinDialogsPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedPinDialogsLocked", C3630R.string.LimitReachedPinDialogsLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 2) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).publicLinksLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).publicLinksLimitPremium;
            limitParams.icon = C3630R.C3632drawable.msg_limit_links;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedPublicLinks", C3630R.string.LimitReachedPublicLinks, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedPublicLinksPremium", C3630R.string.LimitReachedPublicLinksPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedPublicLinksLocked", C3630R.string.LimitReachedPublicLinksLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 12) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).chatlistInvitesLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).chatlistInvitesLimitPremium;
            limitParams.icon = C3630R.C3632drawable.msg_limit_links;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedFolderLinks", C3630R.string.LimitReachedFolderLinks, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedFolderLinksPremium", C3630R.string.LimitReachedFolderLinksPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedFolderLinksLocked", C3630R.string.LimitReachedFolderLinksLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 13) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).chatlistJoinedLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).chatlistJoinedLimitPremium;
            limitParams.icon = C3630R.C3632drawable.msg_limit_folder;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedSharedFolders", C3630R.string.LimitReachedSharedFolders, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedSharedFoldersPremium", C3630R.string.LimitReachedSharedFoldersPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedSharedFoldersLocked", C3630R.string.LimitReachedSharedFoldersLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 3) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).dialogFiltersLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).dialogFiltersLimitPremium;
            limitParams.icon = C3630R.C3632drawable.msg_limit_folder;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedFolders", C3630R.string.LimitReachedFolders, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedFoldersPremium", C3630R.string.LimitReachedFoldersPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedFoldersLocked", C3630R.string.LimitReachedFoldersLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 4) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).dialogFiltersChatsLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).dialogFiltersChatsLimitPremium;
            limitParams.icon = C3630R.C3632drawable.msg_limit_chats;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedChatInFolders", C3630R.string.LimitReachedChatInFolders, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedChatInFoldersPremium", C3630R.string.LimitReachedChatInFoldersPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedChatInFoldersLocked", C3630R.string.LimitReachedChatInFoldersLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 5) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).channelsLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).channelsLimitPremium;
            limitParams.icon = C3630R.C3632drawable.msg_limit_groups;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedCommunities", C3630R.string.LimitReachedCommunities, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedCommunitiesPremium", C3630R.string.LimitReachedCommunitiesPremium, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedCommunitiesLocked", C3630R.string.LimitReachedCommunitiesLocked, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 6) {
            limitParams.defaultLimit = 100;
            limitParams.premiumLimit = 200;
            limitParams.icon = C3630R.C3632drawable.msg_limit_folder;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedFileSize", C3630R.string.LimitReachedFileSize, "2 GB", "4 GB");
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedFileSizePremium", C3630R.string.LimitReachedFileSizePremium, "4 GB");
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedFileSizeLocked", C3630R.string.LimitReachedFileSizeLocked, "2 GB");
        } else if (i == 7) {
            limitParams.defaultLimit = 3;
            limitParams.premiumLimit = 4;
            limitParams.icon = C3630R.C3632drawable.msg_limit_accounts;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedAccounts", C3630R.string.LimitReachedAccounts, 3, Integer.valueOf(limitParams.premiumLimit));
            int i3 = C3630R.string.LimitReachedAccountsPremium;
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedAccountsPremium", i3, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedAccountsPremium", i3, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 11) {
            limitParams.defaultLimit = 0;
            limitParams.premiumLimit = 0;
            limitParams.icon = C3630R.C3632drawable.msg_limit_links;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedAccounts", C3630R.string.LimitReachedAccounts, 0, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrPremium = "";
            limitParams.descriptionStrLocked = "";
        } else if (i == 14) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).storyExpiringLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).storyExpiringLimitPremium;
            limitParams.icon = C3630R.C3632drawable.msg_limit_stories;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedStoriesCount", C3630R.string.LimitReachedStoriesCount, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            int i4 = C3630R.string.LimitReachedStoriesCountPremium;
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedStoriesCountPremium", i4, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedStoriesCountPremium", i4, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 15) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).storiesSentWeeklyLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).storiesSentWeeklyLimitPremium;
            limitParams.icon = C3630R.C3632drawable.msg_limit_stories;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedStoriesWeekly", C3630R.string.LimitReachedStoriesWeekly, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            int i5 = C3630R.string.LimitReachedStoriesWeeklyPremium;
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedStoriesWeeklyPremium", i5, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedStoriesWeeklyPremium", i5, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 16) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).storiesSentMonthlyLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).storiesSentMonthlyLimitPremium;
            limitParams.icon = C3630R.C3632drawable.msg_limit_stories;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedStoriesMonthly", C3630R.string.LimitReachedStoriesMonthly, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            int i6 = C3630R.string.LimitReachedStoriesMonthlyPremium;
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedStoriesMonthlyPremium", i6, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedStoriesMonthlyPremium", i6, Integer.valueOf(limitParams.defaultLimit));
        } else if (i == 18 || i == 19) {
            limitParams.defaultLimit = MessagesController.getInstance(i2).storiesSentMonthlyLimitDefault;
            limitParams.premiumLimit = MessagesController.getInstance(i2).storiesSentMonthlyLimitPremium;
            limitParams.icon = C3630R.C3632drawable.filled_limit_boost;
            limitParams.descriptionStr = LocaleController.formatString("LimitReachedStoriesMonthly", C3630R.string.LimitReachedStoriesMonthly, Integer.valueOf(limitParams.defaultLimit), Integer.valueOf(limitParams.premiumLimit));
            int i7 = C3630R.string.LimitReachedStoriesMonthlyPremium;
            limitParams.descriptionStrPremium = LocaleController.formatString("LimitReachedStoriesMonthlyPremium", i7, Integer.valueOf(limitParams.premiumLimit));
            limitParams.descriptionStrLocked = LocaleController.formatString("LimitReachedStoriesMonthlyPremium", i7, Integer.valueOf(limitParams.defaultLimit));
        }
        return limitParams;
    }

    private void loadAdminedChannels() {
        this.loading = true;
        updateRows();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC$TL_channels_getAdminedPublicChannels(), new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda15
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                LimitReachedBottomSheet.this.lambda$loadAdminedChannels$13(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$13(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda12
            @Override // java.lang.Runnable
            public final void run() {
                LimitReachedBottomSheet.this.lambda$loadAdminedChannels$12(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadAdminedChannels$12(TLObject tLObject) {
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
        this.rowCount = 0 + 1;
        this.headerRow = 0;
        if (!hasFixedSize(this.type)) {
            int i = this.rowCount;
            int i2 = i + 1;
            this.rowCount = i2;
            this.dividerRow = i;
            int i3 = i2 + 1;
            this.rowCount = i3;
            this.chatsTitleRow = i2;
            if (this.loading) {
                this.rowCount = i3 + 1;
                this.loadingRow = i3;
            } else {
                this.chatStartRow = i3;
                int i4 = this.type;
                if (i4 == 11) {
                    this.rowCount = i3 + this.restrictedUsers.size();
                } else if (i4 == 5) {
                    this.rowCount = i3 + this.inactiveChats.size();
                } else {
                    this.rowCount = i3 + this.chats.size();
                }
                int i5 = this.rowCount;
                this.chatEndRow = i5;
                if (i5 - this.chatStartRow > 1) {
                    this.rowCount = i5 + 1;
                    this.emptyViewDividerRow = i5;
                }
            }
        }
        if (this.type == 18) {
            int i6 = this.rowCount;
            this.rowCount = i6 + 1;
            this.linkRow = i6;
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
                int i = C3630R.string.RevokeLinkAlertChannel;
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinkAlertChannel", i, MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + ChatObject.getPublicUsername(tLRPC$Chat), tLRPC$Chat.title)));
            } else {
                int i2 = C3630R.string.RevokeLinkAlert;
                builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinkAlert", i2, MessagesController.getInstance(this.currentAccount).linkPrefix + "/" + ChatObject.getPublicUsername(tLRPC$Chat), tLRPC$Chat.title)));
            }
        } else if (this.parentIsChannel) {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinksAlertChannel", C3630R.string.RevokeLinksAlertChannel, new Object[0])));
        } else {
            builder.setMessage(AndroidUtilities.replaceTags(LocaleController.formatString("RevokeLinksAlert", C3630R.string.RevokeLinksAlert, new Object[0])));
        }
        builder.setNegativeButton(LocaleController.getString("Cancel", C3630R.string.Cancel), null);
        builder.setPositiveButton(LocaleController.getString("RevokeButton", C3630R.string.RevokeButton), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda2
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i3) {
                LimitReachedBottomSheet.this.lambda$revokeLinks$15(arrayList, dialogInterface, i3);
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
    public /* synthetic */ void lambda$revokeLinks$15(ArrayList arrayList, DialogInterface dialogInterface, int i) {
        dismiss();
        for (int i2 = 0; i2 < arrayList.size(); i2++) {
            TLRPC$TL_channels_updateUsername tLRPC$TL_channels_updateUsername = new TLRPC$TL_channels_updateUsername();
            tLRPC$TL_channels_updateUsername.channel = MessagesController.getInputChannel((TLRPC$Chat) arrayList.get(i2));
            tLRPC$TL_channels_updateUsername.username = "";
            ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_channels_updateUsername, new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda13
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    LimitReachedBottomSheet.this.lambda$revokeLinks$14(tLObject, tLRPC$TL_error);
                }
            }, 64);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$revokeLinks$14(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        if (tLObject instanceof TLRPC$TL_boolTrue) {
            AndroidUtilities.runOnUIThread(this.onSuccessRunnable);
        }
    }

    private void loadInactiveChannels() {
        this.loading = true;
        updateRows();
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(new TLRPC$TL_channels_getInactiveChannels(), new RequestDelegate() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda14
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                LimitReachedBottomSheet.this.lambda$loadInactiveChannels$17(tLObject, tLRPC$TL_error);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadInactiveChannels$17(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        String formatPluralString;
        if (tLRPC$TL_error == null) {
            final TLRPC$TL_messages_inactiveChats tLRPC$TL_messages_inactiveChats = (TLRPC$TL_messages_inactiveChats) tLObject;
            final ArrayList arrayList = new ArrayList();
            for (int i = 0; i < tLRPC$TL_messages_inactiveChats.chats.size(); i++) {
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
                    arrayList.add(LocaleController.formatString("InactiveChatSignature", C3630R.string.InactiveChatSignature, LocaleController.formatPluralString("Members", tLRPC$Chat.participants_count, new Object[0]), formatPluralString));
                } else if (ChatObject.isChannel(tLRPC$Chat)) {
                    arrayList.add(LocaleController.formatString("InactiveChannelSignature", C3630R.string.InactiveChannelSignature, formatPluralString));
                } else {
                    arrayList.add(LocaleController.formatString("InactiveChatSignature", C3630R.string.InactiveChatSignature, LocaleController.formatPluralString("Members", tLRPC$Chat.participants_count, new Object[0]), formatPluralString));
                }
            }
            AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.Components.Premium.LimitReachedBottomSheet$$ExternalSyntheticLambda11
                @Override // java.lang.Runnable
                public final void run() {
                    LimitReachedBottomSheet.this.lambda$loadInactiveChannels$16(arrayList, tLRPC$TL_messages_inactiveChats);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$loadInactiveChannels$16(ArrayList arrayList, TLRPC$TL_messages_inactiveChats tLRPC$TL_messages_inactiveChats) {
        int i;
        this.inactiveChatsSignatures.clear();
        this.inactiveChats.clear();
        this.inactiveChatsSignatures.addAll(arrayList);
        this.inactiveChats.addAll(tLRPC$TL_messages_inactiveChats.chats);
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
}
