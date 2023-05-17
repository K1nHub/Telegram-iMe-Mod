package org.telegram.p044ui;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Bundle;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.CharacterStyle;
import android.text.style.ClickableSpan;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iMe.fork.utils.Callbacks$Callback;
import com.iMe.model.dialog.DialogModel;
import com.iMe.p031ui.base.mvp.JavaMvpFragment;
import com.iMe.p031ui.wallet.crypto.settings.privacy.WalletPrivacySettingPresenter;
import com.iMe.p031ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView;
import com.iMe.utils.dialogs.DialogUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.functions.Function0;
import moxy.presenter.InjectPresenter;
import moxy.presenter.ProvidePresenter;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.java.KoinJavaComponent;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3290R;
import org.telegram.messenger.ContactsController;
import org.telegram.messenger.DialogObject;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.FileLog;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.ImageLocation;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.messenger.UserObject;
import org.telegram.p044ui.ActionBar.AlertDialog;
import org.telegram.p044ui.ActionBar.BaseFragment;
import org.telegram.p044ui.ActionBar.C3356ActionBar;
import org.telegram.p044ui.ActionBar.Theme;
import org.telegram.p044ui.ActionBar.ThemeDescription;
import org.telegram.p044ui.Cells.ChatMessageCell;
import org.telegram.p044ui.Cells.HeaderCell;
import org.telegram.p044ui.Cells.RadioCell;
import org.telegram.p044ui.Cells.ShadowSectionCell;
import org.telegram.p044ui.Cells.TextCell;
import org.telegram.p044ui.Cells.TextInfoPrivacyCell;
import org.telegram.p044ui.Cells.TextSelectionHelper;
import org.telegram.p044ui.Cells.TextSettingsCell;
import org.telegram.p044ui.Components.AlertsCreator;
import org.telegram.p044ui.Components.AnimatedEmojiSpan;
import org.telegram.p044ui.Components.BackgroundGradientDrawable;
import org.telegram.p044ui.Components.BackupImageView;
import org.telegram.p044ui.Components.BulletinFactory;
import org.telegram.p044ui.Components.CombinedDrawable;
import org.telegram.p044ui.Components.CubicBezierInterpolator;
import org.telegram.p044ui.Components.HintView;
import org.telegram.p044ui.Components.ImageUpdater;
import org.telegram.p044ui.Components.LayoutHelper;
import org.telegram.p044ui.Components.MotionBackgroundDrawable;
import org.telegram.p044ui.Components.RLottieDrawable;
import org.telegram.p044ui.Components.RecyclerListView;
import org.telegram.p044ui.GroupCreateActivity;
import org.telegram.p044ui.PrivacyControlActivity;
import org.telegram.p044ui.PrivacyUsersActivity;
import org.telegram.tgnet.ConnectionsManager;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Chat;
import org.telegram.tgnet.TLRPC$InputFile;
import org.telegram.tgnet.TLRPC$InputPrivacyRule;
import org.telegram.tgnet.TLRPC$InputUser;
import org.telegram.tgnet.TLRPC$KeyboardButton;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$PrivacyRule;
import org.telegram.tgnet.TLRPC$ReactionCount;
import org.telegram.tgnet.TLRPC$TL_account_privacyRules;
import org.telegram.tgnet.TLRPC$TL_account_setPrivacy;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_inputPhoto;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyKeyAddedByPhone;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyKeyChatInvite;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyKeyForwards;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyKeyPhoneCall;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyKeyPhoneNumber;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyKeyPhoneP2P;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyKeyProfilePhoto;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyKeyStatusTimestamp;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyKeyVoiceMessages;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyValueAllowChatParticipants;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyValueAllowUsers;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyValueDisallowChatParticipants;
import org.telegram.tgnet.TLRPC$TL_inputPrivacyValueDisallowUsers;
import org.telegram.tgnet.TLRPC$TL_message;
import org.telegram.tgnet.TLRPC$TL_messageFwdHeader;
import org.telegram.tgnet.TLRPC$TL_messageMediaEmpty;
import org.telegram.tgnet.TLRPC$TL_peerUser;
import org.telegram.tgnet.TLRPC$TL_photos_photo;
import org.telegram.tgnet.TLRPC$TL_photos_uploadProfilePhoto;
import org.telegram.tgnet.TLRPC$TL_privacyValueAllowAll;
import org.telegram.tgnet.TLRPC$TL_privacyValueAllowChatParticipants;
import org.telegram.tgnet.TLRPC$TL_privacyValueAllowContacts;
import org.telegram.tgnet.TLRPC$TL_privacyValueAllowUsers;
import org.telegram.tgnet.TLRPC$TL_privacyValueDisallowAll;
import org.telegram.tgnet.TLRPC$TL_privacyValueDisallowChatParticipants;
import org.telegram.tgnet.TLRPC$TL_privacyValueDisallowUsers;
import org.telegram.tgnet.TLRPC$TL_user;
import org.telegram.tgnet.TLRPC$TL_userProfilePhoto;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$UserFull;
import org.telegram.tgnet.TLRPC$VideoSize;
/* renamed from: org.telegram.ui.PrivacyControlActivity */
/* loaded from: classes5.dex */
public class PrivacyControlActivity extends JavaMvpFragment implements NotificationCenter.NotificationCenterDelegate, WalletPrivacySettingsView, ImageUpdater.ImageUpdaterDelegate {
    private int alwaysShareRow;
    private TLRPC$PhotoSize avatarForRest;
    private TLRPC$Photo avatarForRestPhoto;
    private RLottieDrawable cameraDrawable;
    private int currentAccountRankAccess;
    private ArrayList<Long> currentMinus;
    private int currentPhotoForRestRow;
    private ArrayList<Long> currentPlus;
    private int currentSubType;
    private int currentType;
    private int detailRow;
    private View doneButton;
    private int everybodyRow;
    ImageUpdater imageUpdater;
    private int initialAccountRankAccess;
    private ArrayList<Long> initialMinus;
    private ArrayList<Long> initialPlus;
    private int initialRulesSubType;
    private int initialRulesType;
    private ListAdapter listAdapter;
    private RecyclerListView listView;
    private MessageCell messageCell;
    private int messageRow;
    private int myContactsRow;
    private int neverShareRow;
    private int nobodyRow;
    private BackupImageView oldAvatarView;
    private TextCell oldPhotoCell;
    private int p2pDetailRow;
    private int p2pRow;
    private int p2pSectionRow;
    private int phoneContactsRow;
    private int phoneDetailRow;
    private int phoneEverybodyRow;
    private int phoneSectionRow;
    private int photoForRestDescriptionRow;
    private int photoForRestRow;
    @InjectPresenter
    public WalletPrivacySettingPresenter presenter;
    private boolean prevSubtypeContacts;
    private int rankDetailsRow;
    private int rankEverybodyRow;
    private int rankNobodyRow;
    private int rankSectionRow;
    private int rowCount;
    private int rulesType;
    private int sectionRow;
    private TextCell setAvatarCell;
    private int shareDetailRow;
    private int shareSectionRow;
    private int walletAccess;
    private List<Long> walletWhitelist;

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$createView$5() {
    }

    @Override // org.telegram.p044ui.Components.ImageUpdater.ImageUpdaterDelegate
    public /* synthetic */ boolean canFinishFragment() {
        return ImageUpdater.ImageUpdaterDelegate.CC.$default$canFinishFragment(this);
    }

    @Override // org.telegram.p044ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didStartUpload(boolean z) {
    }

    @Override // org.telegram.p044ui.Components.ImageUpdater.ImageUpdaterDelegate
    public /* synthetic */ void didUploadFailed() {
        ImageUpdater.ImageUpdaterDelegate.CC.$default$didUploadFailed(this);
    }

    @Override // org.telegram.p044ui.Components.ImageUpdater.ImageUpdaterDelegate
    public /* synthetic */ String getInitialSearchString() {
        return ImageUpdater.ImageUpdaterDelegate.CC.$default$getInitialSearchString(this);
    }

    @Override // org.telegram.p044ui.Components.ImageUpdater.ImageUpdaterDelegate
    public /* synthetic */ void onUploadProgressChanged(float f) {
        ImageUpdater.ImageUpdaterDelegate.CC.$default$onUploadProgressChanged(this, f);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ParametersHolder lambda$providePresenter$0() {
        return ParametersHolderKt.parametersOf(Integer.valueOf(this.rulesType));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @ProvidePresenter
    public WalletPrivacySettingPresenter providePresenter() {
        return (WalletPrivacySettingPresenter) KoinJavaComponent.get(WalletPrivacySettingPresenter.class, null, new Function0() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda10
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                ParametersHolder lambda$providePresenter$0;
                lambda$providePresenter$0 = PrivacyControlActivity.this.lambda$providePresenter$0();
                return lambda$providePresenter$0;
            }
        });
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView
    public void onSuccessLoadPrivacySettings(List<Long> list, int i, int i2) {
        this.walletWhitelist = list;
        this.walletAccess = i;
        this.currentAccountRankAccess = i2;
        this.initialAccountRankAccess = i2;
        checkPrivacy();
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView
    public void onSuccessSaveCryptoSettings() {
        finishFragment();
    }

    @Override // com.iMe.p031ui.wallet.crypto.settings.privacy.WalletPrivacySettingsView
    public void showConfirmDialog(DialogModel dialogModel, Callbacks$Callback callbacks$Callback) {
        showDialog(DialogUtils.createDialog(getParentActivity(), dialogModel, callbacks$Callback, null));
    }

    private void processWalletPrivacyChanges() {
        WalletPrivacySettingPresenter walletPrivacySettingPresenter = this.presenter;
        if (walletPrivacySettingPresenter != null) {
            walletPrivacySettingPresenter.savePrivacySettings(this.initialPlus, this.currentPlus, this.initialRulesType, this.currentType, this.initialAccountRankAccess, this.currentAccountRankAccess);
        }
    }

    @Override // org.telegram.p044ui.Components.ImageUpdater.ImageUpdaterDelegate
    public void didUploadPhoto(final TLRPC$InputFile tLRPC$InputFile, final TLRPC$InputFile tLRPC$InputFile2, final double d, String str, final TLRPC$PhotoSize tLRPC$PhotoSize, final TLRPC$PhotoSize tLRPC$PhotoSize2, boolean z, final TLRPC$VideoSize tLRPC$VideoSize) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda6
            @Override // java.lang.Runnable
            public final void run() {
                PrivacyControlActivity.this.lambda$didUploadPhoto$3(tLRPC$PhotoSize2, tLRPC$InputFile, tLRPC$InputFile2, d, tLRPC$VideoSize, tLRPC$PhotoSize);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$3(TLRPC$PhotoSize tLRPC$PhotoSize, TLRPC$InputFile tLRPC$InputFile, TLRPC$InputFile tLRPC$InputFile2, double d, TLRPC$VideoSize tLRPC$VideoSize, TLRPC$PhotoSize tLRPC$PhotoSize2) {
        this.avatarForRest = tLRPC$PhotoSize;
        this.avatarForRestPhoto = null;
        updateAvatarForRestInfo();
        if (tLRPC$InputFile != null || tLRPC$InputFile2 != null) {
            TLRPC$TL_photos_uploadProfilePhoto tLRPC$TL_photos_uploadProfilePhoto = new TLRPC$TL_photos_uploadProfilePhoto();
            if (tLRPC$InputFile != null) {
                tLRPC$TL_photos_uploadProfilePhoto.file = tLRPC$InputFile;
                tLRPC$TL_photos_uploadProfilePhoto.flags |= 1;
            }
            if (tLRPC$InputFile2 != null) {
                tLRPC$TL_photos_uploadProfilePhoto.video = tLRPC$InputFile2;
                int i = tLRPC$TL_photos_uploadProfilePhoto.flags | 2;
                tLRPC$TL_photos_uploadProfilePhoto.flags = i;
                tLRPC$TL_photos_uploadProfilePhoto.video_start_ts = d;
                tLRPC$TL_photos_uploadProfilePhoto.flags = i | 4;
            }
            if (tLRPC$VideoSize != null) {
                tLRPC$TL_photos_uploadProfilePhoto.video_emoji_markup = tLRPC$VideoSize;
                tLRPC$TL_photos_uploadProfilePhoto.flags |= 16;
            }
            tLRPC$TL_photos_uploadProfilePhoto.fallback = true;
            tLRPC$TL_photos_uploadProfilePhoto.flags |= 8;
            getConnectionsManager().sendRequest(tLRPC$TL_photos_uploadProfilePhoto, new RequestDelegate() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda11
                @Override // org.telegram.tgnet.RequestDelegate
                public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                    PrivacyControlActivity.this.lambda$didUploadPhoto$2(tLObject, tLRPC$TL_error);
                }
            });
            TLRPC$TL_user tLRPC$TL_user = new TLRPC$TL_user();
            TLRPC$TL_userProfilePhoto tLRPC$TL_userProfilePhoto = new TLRPC$TL_userProfilePhoto();
            tLRPC$TL_user.photo = tLRPC$TL_userProfilePhoto;
            tLRPC$TL_userProfilePhoto.photo_small = tLRPC$PhotoSize.location;
            tLRPC$TL_userProfilePhoto.photo_big = tLRPC$PhotoSize2.location;
            tLRPC$TL_user.first_name = getUserConfig().getCurrentUser().first_name;
            tLRPC$TL_user.last_name = getUserConfig().getCurrentUser().last_name;
            tLRPC$TL_user.access_hash = getUserConfig().getCurrentUser().access_hash;
            BulletinFactory.m29of(this).createUsersBulletin(Collections.singletonList(tLRPC$TL_user), LocaleController.getString("PhotoForRestTooltip", C3290R.string.PhotoForRestTooltip)).show();
        }
        updateRows(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$2(final TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda5
            @Override // java.lang.Runnable
            public final void run() {
                PrivacyControlActivity.this.lambda$didUploadPhoto$1(tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$didUploadPhoto$1(TLObject tLObject) {
        if (tLObject != null) {
            TLRPC$TL_photos_photo tLRPC$TL_photos_photo = (TLRPC$TL_photos_photo) tLObject;
            TLRPC$UserFull userFull = getMessagesController().getUserFull(getUserConfig().clientUserId);
            userFull.flags |= 4194304;
            userFull.fallback_photo = tLRPC$TL_photos_photo.photo;
            getMessagesStorage().updateUserInfo(userFull, true);
            NotificationCenter.getInstance(this.currentAccount).postNotificationName(NotificationCenter.reloadDialogPhotos, new Object[0]);
            TLRPC$PhotoSize closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(tLRPC$TL_photos_photo.photo.sizes, 100);
            TLRPC$PhotoSize closestPhotoSizeWithSize2 = FileLoader.getClosestPhotoSizeWithSize(tLRPC$TL_photos_photo.photo.sizes, 1000);
            if (closestPhotoSizeWithSize != null && this.avatarForRest != null) {
                FileLoader.getInstance(this.currentAccount).getPathToAttach(this.avatarForRest, true).renameTo(FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize, true));
                ImageLoader.getInstance().replaceImageInCache(this.avatarForRest.location.volume_id + "_" + this.avatarForRest.location.local_id + "@50_50", closestPhotoSizeWithSize.location.volume_id + "_" + closestPhotoSizeWithSize.location.local_id + "@50_50", ImageLocation.getForLocal(closestPhotoSizeWithSize.location), false);
            }
            if (closestPhotoSizeWithSize2 == null || this.avatarForRest == null) {
                return;
            }
            FileLoader.getInstance(this.currentAccount).getPathToAttach(this.avatarForRest.location, true).renameTo(FileLoader.getInstance(this.currentAccount).getPathToAttach(closestPhotoSizeWithSize2, true));
        }
    }

    private void updateAvatarForRestInfo() {
        TLRPC$PhotoSize tLRPC$PhotoSize;
        TextCell textCell = this.setAvatarCell;
        if (textCell != null) {
            if (this.avatarForRest == null) {
                textCell.getTextView().setText(LocaleController.formatString("SetPhotoForRest", C3290R.string.SetPhotoForRest, new Object[0]));
                this.setAvatarCell.setNeedDivider(false);
            } else {
                textCell.getTextView().setText(LocaleController.formatString("UpdatePhotoForRest", C3290R.string.UpdatePhotoForRest, new Object[0]));
                this.setAvatarCell.setNeedDivider(true);
            }
        }
        BackupImageView backupImageView = this.oldAvatarView;
        if (backupImageView == null || (tLRPC$PhotoSize = this.avatarForRest) == null) {
            return;
        }
        TLRPC$Photo tLRPC$Photo = this.avatarForRestPhoto;
        if (tLRPC$Photo != null) {
            backupImageView.setImage(ImageLocation.getForPhoto(tLRPC$PhotoSize, tLRPC$Photo), "50_50", (Drawable) null, UserConfig.getInstance(this.currentAccount).getCurrentUser());
        } else {
            backupImageView.setImage(ImageLocation.getForLocal(tLRPC$PhotoSize.location), "50_50", (Drawable) null, UserConfig.getInstance(this.currentAccount).getCurrentUser());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.PrivacyControlActivity$MessageCell */
    /* loaded from: classes5.dex */
    public class MessageCell extends FrameLayout {
        private Drawable backgroundDrawable;
        private BackgroundGradientDrawable.Disposable backgroundGradientDisposable;
        private ChatMessageCell cell;
        private HintView hintView;
        private MessageObject messageObject;
        private Drawable shadowDrawable;

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchSetPressed(boolean z) {
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.View
        public boolean onTouchEvent(MotionEvent motionEvent) {
            return false;
        }

        public MessageCell(PrivacyControlActivity privacyControlActivity, Context context) {
            super(context);
            new Runnable() { // from class: org.telegram.ui.PrivacyControlActivity$MessageCell$$ExternalSyntheticLambda0
                @Override // java.lang.Runnable
                public final void run() {
                    PrivacyControlActivity.MessageCell.this.invalidate();
                }
            };
            setWillNotDraw(false);
            setClipToPadding(false);
            this.shadowDrawable = Theme.getThemedDrawableByKey(context, C3290R.C3292drawable.greydivider_bottom, Theme.key_windowBackgroundGrayShadow);
            setPadding(0, AndroidUtilities.m54dp(11), 0, AndroidUtilities.m54dp(11));
            TLRPC$User user = MessagesController.getInstance(((BaseFragment) privacyControlActivity).currentAccount).getUser(Long.valueOf(UserConfig.getInstance(((BaseFragment) privacyControlActivity).currentAccount).getClientUserId()));
            TLRPC$TL_message tLRPC$TL_message = new TLRPC$TL_message();
            tLRPC$TL_message.message = LocaleController.getString("PrivacyForwardsMessageLine", C3290R.string.PrivacyForwardsMessageLine);
            tLRPC$TL_message.date = (((int) (System.currentTimeMillis() / 1000)) - 3600) + 60;
            tLRPC$TL_message.dialog_id = 1L;
            tLRPC$TL_message.flags = 261;
            tLRPC$TL_message.from_id = new TLRPC$TL_peerUser();
            tLRPC$TL_message.f1457id = 1;
            TLRPC$TL_messageFwdHeader tLRPC$TL_messageFwdHeader = new TLRPC$TL_messageFwdHeader();
            tLRPC$TL_message.fwd_from = tLRPC$TL_messageFwdHeader;
            tLRPC$TL_messageFwdHeader.from_name = ContactsController.formatName(user.first_name, user.last_name);
            tLRPC$TL_message.media = new TLRPC$TL_messageMediaEmpty();
            tLRPC$TL_message.out = false;
            TLRPC$TL_peerUser tLRPC$TL_peerUser = new TLRPC$TL_peerUser();
            tLRPC$TL_message.peer_id = tLRPC$TL_peerUser;
            tLRPC$TL_peerUser.user_id = UserConfig.getInstance(((BaseFragment) privacyControlActivity).currentAccount).getClientUserId();
            MessageObject messageObject = new MessageObject(((BaseFragment) privacyControlActivity).currentAccount, tLRPC$TL_message, true, false);
            this.messageObject = messageObject;
            messageObject.eventId = 1L;
            messageObject.resetLayout();
            ChatMessageCell chatMessageCell = new ChatMessageCell(context);
            this.cell = chatMessageCell;
            chatMessageCell.setDelegate(new ChatMessageCell.ChatMessageCellDelegate(this, privacyControlActivity) { // from class: org.telegram.ui.PrivacyControlActivity.MessageCell.1
                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean canDrawOutboundsContent() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canDrawOutboundsContent(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean canPerformActions() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$canPerformActions(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didLongPress(ChatMessageCell chatMessageCell2, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPress(this, chatMessageCell2, f, f2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didLongPressBotButton(ChatMessageCell chatMessageCell2, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressBotButton(this, chatMessageCell2, tLRPC$KeyboardButton);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didLongPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC$Chat tLRPC$Chat, int i, float f, float f2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressChannelAvatar(this, chatMessageCell2, tLRPC$Chat, i, f, f2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didLongPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC$User tLRPC$User, float f, float f2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didLongPressUserAvatar(this, chatMessageCell2, tLRPC$User, f, f2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressAdditionalSideButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAdditionalSideButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean didPressAnimatedEmoji(ChatMessageCell chatMessageCell2, AnimatedEmojiSpan animatedEmojiSpan) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressAnimatedEmoji(this, chatMessageCell2, animatedEmojiSpan);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressBotButton(ChatMessageCell chatMessageCell2, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressBotButton(this, chatMessageCell2, tLRPC$KeyboardButton);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressCancelSendButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCancelSendButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressChannelAvatar(ChatMessageCell chatMessageCell2, TLRPC$Chat tLRPC$Chat, int i, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressChannelAvatar(this, chatMessageCell2, tLRPC$Chat, i, f, f2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressCommentButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressCommentButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressExtendedMediaPreview(ChatMessageCell chatMessageCell2, TLRPC$KeyboardButton tLRPC$KeyboardButton) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressExtendedMediaPreview(this, chatMessageCell2, tLRPC$KeyboardButton);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressForkTranscribeButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressForkTranscribeButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressHiddenForward(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHiddenForward(this, chatMessageCell2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressHint(ChatMessageCell chatMessageCell2, int i) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressHint(this, chatMessageCell2, i);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressImage(ChatMessageCell chatMessageCell2, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressImage(this, chatMessageCell2, f, f2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressInstantButton(ChatMessageCell chatMessageCell2, int i) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressInstantButton(this, chatMessageCell2, i);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressOther(ChatMessageCell chatMessageCell2, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressOther(this, chatMessageCell2, f, f2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressReaction(ChatMessageCell chatMessageCell2, TLRPC$ReactionCount tLRPC$ReactionCount, boolean z) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReaction(this, chatMessageCell2, tLRPC$ReactionCount, z);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressReplyMessage(ChatMessageCell chatMessageCell2, int i) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressReplyMessage(this, chatMessageCell2, i);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressSideButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressSideButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressTime(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTime(this, chatMessageCell2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressTopicButton(ChatMessageCell chatMessageCell2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressTopicButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressUrl(ChatMessageCell chatMessageCell2, CharacterStyle characterStyle, boolean z) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUrl(this, chatMessageCell2, characterStyle, z);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressUserAvatar(ChatMessageCell chatMessageCell2, TLRPC$User tLRPC$User, float f, float f2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressUserAvatar(this, chatMessageCell2, tLRPC$User, f, f2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressViaBot(ChatMessageCell chatMessageCell2, String str) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBot(this, chatMessageCell2, str);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressViaBotNotInline(ChatMessageCell chatMessageCell2, long j) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressViaBotNotInline(this, chatMessageCell2, j);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didPressVoteButtons(ChatMessageCell chatMessageCell2, ArrayList arrayList, int i, int i2, int i3) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didPressVoteButtons(this, chatMessageCell2, arrayList, i, i2, i3);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void didStartVideoStream(MessageObject messageObject2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$didStartVideoStream(this, messageObject2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ String getAdminRank(long j) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getAdminRank(this, j);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ PinchToZoomHelper getPinchToZoomHelper() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getPinchToZoomHelper(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ String getProgressLoadingBotButtonUrl(ChatMessageCell chatMessageCell2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingBotButtonUrl(this, chatMessageCell2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ CharacterStyle getProgressLoadingLink(ChatMessageCell chatMessageCell2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getProgressLoadingLink(this, chatMessageCell2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ TextSelectionHelper.ChatListTextSelectionHelper getTextSelectionHelper() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$getTextSelectionHelper(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean hasSelectedMessages() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$hasSelectedMessages(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void invalidateBlur() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$invalidateBlur(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isAllowForkTranscribe() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isAllowForkTranscribe(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isInPreviewMode() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isInPreviewMode(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isLandscape() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isLandscape(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isProgressLoading(ChatMessageCell chatMessageCell2, int i) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isProgressLoading(this, chatMessageCell2, i);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean isReplyOrSelf() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$isReplyOrSelf(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean keyboardIsOpened() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$keyboardIsOpened(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean needDrawTranslateButton(ChatMessageCell chatMessageCell2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needDrawTranslateButton(this, chatMessageCell2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void needOpenWebView(MessageObject messageObject2, String str, String str2, String str3, String str4, int i, int i2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$needOpenWebView(this, messageObject2, str, str2, str3, str4, i, i2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean needPlayMessage(MessageObject messageObject2, boolean z) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$needPlayMessage(this, messageObject2, z);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void needReloadPolls() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$needReloadPolls(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void needShowPremiumBulletin(int i) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$needShowPremiumBulletin(this, i);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean onAccessibilityAction(int i, Bundle bundle) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$onAccessibilityAction(this, i, bundle);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void onDiceFinished() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$onDiceFinished(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void runWithActivationCheck(Callbacks$Callback callbacks$Callback) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$runWithActivationCheck(this, callbacks$Callback);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void setShouldNotRepeatSticker(MessageObject messageObject2) {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$setShouldNotRepeatSticker(this, messageObject2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean shouldDrawThreadProgress(ChatMessageCell chatMessageCell2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldDrawThreadProgress(this, chatMessageCell2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean shouldRepeatSticker(MessageObject messageObject2) {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldRepeatSticker(this, messageObject2);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ boolean shouldShowTopicButton() {
                    return ChatMessageCell.ChatMessageCellDelegate.CC.$default$shouldShowTopicButton(this);
                }

                @Override // org.telegram.p044ui.Cells.ChatMessageCell.ChatMessageCellDelegate
                public /* synthetic */ void videoTimerReached() {
                    ChatMessageCell.ChatMessageCellDelegate.CC.$default$videoTimerReached(this);
                }
            });
            ChatMessageCell chatMessageCell2 = this.cell;
            chatMessageCell2.isChat = false;
            chatMessageCell2.setFullyDraw(true);
            this.cell.setMessageObject(this.messageObject, null, false, false);
            addView(this.cell, LayoutHelper.createLinear(-1, -2));
            HintView hintView = new HintView(context, 1, true);
            this.hintView = hintView;
            addView(hintView, LayoutHelper.createFrame(-2, -2, 51, 19, 0, 19, 0));
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
            this.hintView.showForMessageCell(this.cell, false);
        }

        @Override // android.view.View
        protected void onDraw(Canvas canvas) {
            Drawable cachedWallpaperNonBlocking = Theme.getCachedWallpaperNonBlocking();
            if (cachedWallpaperNonBlocking != null && this.backgroundDrawable != cachedWallpaperNonBlocking) {
                BackgroundGradientDrawable.Disposable disposable = this.backgroundGradientDisposable;
                if (disposable != null) {
                    disposable.dispose();
                    this.backgroundGradientDisposable = null;
                }
                this.backgroundDrawable = cachedWallpaperNonBlocking;
            }
            Drawable drawable = this.backgroundDrawable;
            if ((drawable instanceof ColorDrawable) || (drawable instanceof GradientDrawable) || (drawable instanceof MotionBackgroundDrawable)) {
                drawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
                Drawable drawable2 = this.backgroundDrawable;
                if (drawable2 instanceof BackgroundGradientDrawable) {
                    this.backgroundGradientDisposable = ((BackgroundGradientDrawable) drawable2).drawExactBoundsSize(canvas, this);
                } else {
                    drawable2.draw(canvas);
                }
            } else if (drawable instanceof BitmapDrawable) {
                if (((BitmapDrawable) drawable).getTileModeX() == Shader.TileMode.REPEAT) {
                    canvas.save();
                    float f = 2.0f / AndroidUtilities.density;
                    canvas.scale(f, f);
                    this.backgroundDrawable.setBounds(0, 0, (int) Math.ceil(getMeasuredWidth() / f), (int) Math.ceil(getMeasuredHeight() / f));
                } else {
                    int measuredHeight = getMeasuredHeight();
                    float max = Math.max(getMeasuredWidth() / this.backgroundDrawable.getIntrinsicWidth(), measuredHeight / this.backgroundDrawable.getIntrinsicHeight());
                    int ceil = (int) Math.ceil(this.backgroundDrawable.getIntrinsicWidth() * max);
                    int ceil2 = (int) Math.ceil(this.backgroundDrawable.getIntrinsicHeight() * max);
                    int measuredWidth = (getMeasuredWidth() - ceil) / 2;
                    int i = (measuredHeight - ceil2) / 2;
                    canvas.save();
                    canvas.clipRect(0, 0, ceil, getMeasuredHeight());
                    this.backgroundDrawable.setBounds(measuredWidth, i, ceil + measuredWidth, ceil2 + i);
                }
                this.backgroundDrawable.draw(canvas);
                canvas.restore();
            } else {
                super.onDraw(canvas);
            }
            this.shadowDrawable.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            this.shadowDrawable.draw(canvas);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            BackgroundGradientDrawable.Disposable disposable = this.backgroundGradientDisposable;
            if (disposable != null) {
                disposable.dispose();
                this.backgroundGradientDisposable = null;
            }
        }

        @Override // android.view.View
        public void invalidate() {
            super.invalidate();
            this.cell.invalidate();
        }
    }

    public PrivacyControlActivity(int i) {
        this(i, false);
    }

    public PrivacyControlActivity(int i, boolean z) {
        TLRPC$PhotoSize closestPhotoSizeWithSize;
        this.walletAccess = 1;
        this.initialAccountRankAccess = 1;
        this.currentAccountRankAccess = 1;
        this.walletWhitelist = new ArrayList();
        this.initialPlus = new ArrayList<>();
        this.initialMinus = new ArrayList<>();
        this.rulesType = i;
        if (z) {
            ContactsController.getInstance(this.currentAccount).loadPrivacySettings();
        }
        if (this.rulesType == 4) {
            ImageUpdater imageUpdater = new ImageUpdater(false, 0, true);
            this.imageUpdater = imageUpdater;
            imageUpdater.parentFragment = this;
            imageUpdater.setDelegate(this);
            TLRPC$UserFull userFull = getMessagesController().getUserFull(getUserConfig().clientUserId);
            if (!UserObject.hasFallbackPhoto(userFull) || (closestPhotoSizeWithSize = FileLoader.getClosestPhotoSizeWithSize(userFull.fallback_photo.sizes, 1000)) == null) {
                return;
            }
            this.avatarForRest = closestPhotoSizeWithSize;
            this.avatarForRestPhoto = userFull.fallback_photo;
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean onFragmentCreate() {
        super.onFragmentCreate();
        checkPrivacy();
        updateRows(false);
        NotificationCenter.getInstance(this.currentAccount).addObserver(this, NotificationCenter.privacyRulesUpdated);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.didSetNewWallpapper);
        NotificationCenter.getGlobalInstance().addObserver(this, NotificationCenter.emojiLoaded);
        return true;
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onFragmentDestroy() {
        super.onFragmentDestroy();
        NotificationCenter.getInstance(this.currentAccount).removeObserver(this, NotificationCenter.privacyRulesUpdated);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.didSetNewWallpapper);
        NotificationCenter.getGlobalInstance().removeObserver(this, NotificationCenter.emojiLoaded);
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public View createView(Context context) {
        super.createView(context);
        if (this.rulesType == 5) {
            this.messageCell = new MessageCell(this, context);
        }
        this.actionBar.setBackButtonImage(C3290R.C3292drawable.ic_ab_back);
        this.actionBar.setAllowOverlayTitle(true);
        int i = this.rulesType;
        if (i == 101) {
            this.actionBar.setTitle(LocaleController.getInternalString(C3290R.string.wallet_crypto_privacy_toolbar_title));
        } else if (i == 6) {
            this.actionBar.setTitle(LocaleController.getString("PrivacyPhone", C3290R.string.PrivacyPhone));
        } else if (i == 5) {
            this.actionBar.setTitle(LocaleController.getString("PrivacyForwards", C3290R.string.PrivacyForwards));
        } else if (i == 4) {
            this.actionBar.setTitle(LocaleController.getString("PrivacyProfilePhoto", C3290R.string.PrivacyProfilePhoto));
        } else if (i == 3) {
            this.actionBar.setTitle(LocaleController.getString("PrivacyP2P", C3290R.string.PrivacyP2P));
        } else if (i == 2) {
            this.actionBar.setTitle(LocaleController.getString("Calls", C3290R.string.Calls));
        } else if (i == 1) {
            this.actionBar.setTitle(LocaleController.getString("GroupsAndChannels", C3290R.string.GroupsAndChannels));
        } else if (i == 8) {
            this.actionBar.setTitle(LocaleController.getString("PrivacyVoiceMessages", C3290R.string.PrivacyVoiceMessages));
        } else {
            this.actionBar.setTitle(LocaleController.getString("PrivacyLastSeen", C3290R.string.PrivacyLastSeen));
        }
        this.actionBar.setActionBarMenuOnItemClick(new C3356ActionBar.ActionBarMenuOnItemClick() { // from class: org.telegram.ui.PrivacyControlActivity.1
            @Override // org.telegram.p044ui.ActionBar.C3356ActionBar.ActionBarMenuOnItemClick
            public void onItemClick(int i2) {
                if (i2 == -1) {
                    if (PrivacyControlActivity.this.checkDiscard()) {
                        PrivacyControlActivity.this.finishFragment();
                    }
                } else if (i2 == 1) {
                    PrivacyControlActivity.this.processDone();
                }
            }
        });
        this.doneButton = this.actionBar.createMenu().addItemWithWidth(1, C3290R.C3292drawable.ic_ab_done, AndroidUtilities.m54dp(56), LocaleController.getString("Done", C3290R.string.Done));
        boolean hasChanges = hasChanges();
        this.doneButton.setAlpha(hasChanges ? 1.0f : 0.0f);
        this.doneButton.setScaleX(hasChanges ? 1.0f : 0.0f);
        this.doneButton.setScaleY(hasChanges ? 1.0f : 0.0f);
        this.doneButton.setEnabled(hasChanges);
        this.listAdapter = new ListAdapter(context);
        FrameLayout frameLayout = new FrameLayout(context);
        this.fragmentView = frameLayout;
        FrameLayout frameLayout2 = frameLayout;
        frameLayout2.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundGray));
        RecyclerListView recyclerListView = new RecyclerListView(context) { // from class: org.telegram.ui.PrivacyControlActivity.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // org.telegram.p044ui.Components.RecyclerListView, android.view.ViewGroup, android.view.View
            public void dispatchDraw(Canvas canvas) {
                drawSectionBackground(canvas, PrivacyControlActivity.this.shareSectionRow, PrivacyControlActivity.this.shareDetailRow - 1, getThemedColor(Theme.key_windowBackgroundWhite));
                super.dispatchDraw(canvas);
            }
        };
        this.listView = recyclerListView;
        recyclerListView.setLayoutManager(new LinearLayoutManager(context, 1, false));
        this.listView.setVerticalScrollBarEnabled(false);
        ((DefaultItemAnimator) this.listView.getItemAnimator()).setDelayAnimations(false);
        frameLayout2.addView(this.listView, LayoutHelper.createFrame(-1, -1));
        this.listView.setAdapter(this.listAdapter);
        this.listView.setOnItemClickListener(new RecyclerListView.OnItemClickListener() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda14
            @Override // org.telegram.p044ui.Components.RecyclerListView.OnItemClickListener
            public final void onItemClick(View view, int i2) {
                PrivacyControlActivity.this.lambda$createView$9(view, i2);
            }
        });
        DefaultItemAnimator defaultItemAnimator = new DefaultItemAnimator() { // from class: org.telegram.ui.PrivacyControlActivity.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // androidx.recyclerview.widget.DefaultItemAnimator
            public void onMoveAnimationUpdate(RecyclerView.ViewHolder viewHolder) {
                super.onMoveAnimationUpdate(viewHolder);
                PrivacyControlActivity.this.listView.invalidate();
            }
        };
        defaultItemAnimator.setDurations(350L);
        defaultItemAnimator.setInterpolator(CubicBezierInterpolator.EASE_OUT_QUINT);
        defaultItemAnimator.setDelayAnimations(false);
        this.listView.setItemAnimator(defaultItemAnimator);
        setMessageText();
        return this.fragmentView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$createView$9(View view, final int i) {
        ArrayList<Long> arrayList;
        int i2 = this.rankNobodyRow;
        if (i == i2 || i == this.rankEverybodyRow) {
            r0 = i == i2 ? 1 : 0;
            if (r0 == this.currentAccountRankAccess) {
                return;
            }
            this.currentAccountRankAccess = r0;
            updateDoneButton();
            updateRows(true);
        } else if (i == this.currentPhotoForRestRow) {
            AlertDialog create = AlertsCreator.createSimpleAlert(getContext(), LocaleController.getString("RemovePublicPhoto", C3290R.string.RemovePublicPhoto), LocaleController.getString("RemovePhotoForRestDescription", C3290R.string.RemovePhotoForRestDescription), LocaleController.getString("Remove", C3290R.string.Remove), new Runnable() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda4
                @Override // java.lang.Runnable
                public final void run() {
                    PrivacyControlActivity.this.lambda$createView$4();
                }
            }, null).create();
            create.show();
            create.redPositive();
        } else if (i == this.photoForRestRow) {
            ImageUpdater imageUpdater = this.imageUpdater;
            if (imageUpdater != null) {
                imageUpdater.openMenu(false, PrivacyControlActivity$$ExternalSyntheticLambda9.INSTANCE, new DialogInterface.OnDismissListener() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda3
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        PrivacyControlActivity.this.lambda$createView$6(dialogInterface);
                    }
                }, 0);
                this.cameraDrawable.setCurrentFrame(0);
                this.cameraDrawable.setCustomEndFrame(43);
                this.setAvatarCell.imageView.playAnimation();
            }
        } else {
            int i3 = this.nobodyRow;
            if (i == i3 || i == this.everybodyRow || i == this.myContactsRow) {
                if (i == i3) {
                    r0 = 1;
                } else if (i != this.everybodyRow) {
                    r0 = 2;
                }
                if (r0 == this.currentType) {
                    return;
                }
                this.currentType = r0;
                updateDoneButton();
                updateRows(true);
            } else if (i == this.phoneContactsRow || i == this.phoneEverybodyRow) {
                r0 = i != this.phoneEverybodyRow ? 1 : 0;
                if (r0 == this.currentSubType) {
                    return;
                }
                this.currentSubType = r0;
                updateDoneButton();
                updateRows(true);
            } else {
                int i4 = this.neverShareRow;
                if (i == i4 || i == this.alwaysShareRow) {
                    if (i == i4) {
                        arrayList = this.currentMinus;
                    } else {
                        arrayList = this.currentPlus;
                    }
                    ArrayList<Long> arrayList2 = arrayList;
                    if (arrayList2.isEmpty()) {
                        Bundle bundle = new Bundle();
                        bundle.putBoolean(i == this.neverShareRow ? "isNeverShare" : "isAlwaysShare", true);
                        bundle.putInt("chatAddType", this.rulesType != 0 ? 1 : 0);
                        if (this.rulesType == 101) {
                            bundle.putBoolean("isOnlyUsers", true);
                        }
                        GroupCreateActivity groupCreateActivity = new GroupCreateActivity(bundle);
                        groupCreateActivity.setDelegate(new GroupCreateActivity.GroupCreateActivityDelegate() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda15
                            @Override // org.telegram.p044ui.GroupCreateActivity.GroupCreateActivityDelegate
                            public final void didSelectUsers(ArrayList arrayList3) {
                                PrivacyControlActivity.this.lambda$createView$7(i, arrayList3);
                            }
                        });
                        presentFragment(groupCreateActivity);
                        return;
                    }
                    int i5 = this.rulesType;
                    PrivacyUsersActivity privacyUsersActivity = new PrivacyUsersActivity(0, arrayList2, (i5 == 0 || i5 == 4) ? false : true, i == this.alwaysShareRow, i5 == 101 ? 1 : 0);
                    privacyUsersActivity.setDelegate(new PrivacyUsersActivity.PrivacyActivityDelegate() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda16
                        @Override // org.telegram.p044ui.PrivacyUsersActivity.PrivacyActivityDelegate
                        public final void didUpdateUserList(ArrayList arrayList3, boolean z) {
                            PrivacyControlActivity.this.lambda$createView$8(i, arrayList3, z);
                        }
                    });
                    presentFragment(privacyUsersActivity);
                } else if (i == this.p2pRow) {
                    presentFragment(new PrivacyControlActivity(3));
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$4() {
        TLRPC$Photo tLRPC$Photo;
        this.avatarForRest = null;
        this.avatarForRestPhoto = null;
        TLRPC$UserFull userFull = getMessagesController().getUserFull(getUserConfig().clientUserId);
        if (userFull == null || (tLRPC$Photo = userFull.fallback_photo) == null) {
            return;
        }
        userFull.flags &= -4194305;
        userFull.fallback_photo = null;
        getMessagesStorage().updateUserInfo(userFull, true);
        updateAvatarForRestInfo();
        updateRows(true);
        TLRPC$TL_inputPhoto tLRPC$TL_inputPhoto = new TLRPC$TL_inputPhoto();
        tLRPC$TL_inputPhoto.f1455id = tLRPC$Photo.f1462id;
        tLRPC$TL_inputPhoto.access_hash = tLRPC$Photo.access_hash;
        byte[] bArr = tLRPC$Photo.file_reference;
        tLRPC$TL_inputPhoto.file_reference = bArr;
        if (bArr == null) {
            tLRPC$TL_inputPhoto.file_reference = new byte[0];
        }
        MessagesController.getInstance(this.currentAccount).deleteUserPhoto(tLRPC$TL_inputPhoto);
        NotificationCenter.getInstance(this.currentAccount).postNotificationName(NotificationCenter.reloadDialogPhotos, new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$6(DialogInterface dialogInterface) {
        if (!this.imageUpdater.isUploadingImage()) {
            this.cameraDrawable.setCustomEndFrame(86);
            this.setAvatarCell.imageView.playAnimation();
            return;
        }
        this.cameraDrawable.setCurrentFrame(0, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$7(int i, ArrayList arrayList) {
        int i2 = 0;
        if (i == this.neverShareRow) {
            this.currentMinus = arrayList;
            while (i2 < this.currentMinus.size()) {
                this.currentPlus.remove(this.currentMinus.get(i2));
                i2++;
            }
        } else {
            this.currentPlus = arrayList;
            while (i2 < this.currentPlus.size()) {
                this.currentMinus.remove(this.currentPlus.get(i2));
                i2++;
            }
        }
        updateDoneButton();
        this.listAdapter.notifyDataSetChanged();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$createView$8(int i, ArrayList arrayList, boolean z) {
        int i2 = 0;
        if (i == this.neverShareRow) {
            this.currentMinus = arrayList;
            if (z) {
                while (i2 < this.currentMinus.size()) {
                    this.currentPlus.remove(this.currentMinus.get(i2));
                    i2++;
                }
            }
        } else {
            this.currentPlus = arrayList;
            if (z) {
                while (i2 < this.currentPlus.size()) {
                    this.currentMinus.remove(this.currentPlus.get(i2));
                    i2++;
                }
            }
        }
        updateDoneButton();
        this.listAdapter.notifyDataSetChanged();
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... objArr) {
        MessageCell messageCell;
        if (i == NotificationCenter.privacyRulesUpdated) {
            if (this.rulesType != 101) {
                checkPrivacy();
            }
        } else if (i == NotificationCenter.emojiLoaded) {
            this.listView.invalidateViews();
        } else if (i != NotificationCenter.didSetNewWallpapper || (messageCell = this.messageCell) == null) {
        } else {
            messageCell.invalidate();
        }
    }

    private void updateDoneButton() {
        boolean hasChanges = hasChanges();
        this.doneButton.setEnabled(hasChanges);
        this.doneButton.animate().alpha(hasChanges ? 1.0f : 0.0f).scaleX(hasChanges ? 1.0f : 0.0f).scaleY(hasChanges ? 1.0f : 0.0f).setDuration(180L).start();
    }

    private void applyCurrentPrivacySettings() {
        TLRPC$InputUser inputUser;
        TLRPC$InputUser inputUser2;
        TLRPC$TL_account_setPrivacy tLRPC$TL_account_setPrivacy = new TLRPC$TL_account_setPrivacy();
        int i = this.rulesType;
        if (i == 6) {
            tLRPC$TL_account_setPrivacy.key = new TLRPC$TL_inputPrivacyKeyPhoneNumber();
            if (this.currentType == 1) {
                TLRPC$TL_account_setPrivacy tLRPC$TL_account_setPrivacy2 = new TLRPC$TL_account_setPrivacy();
                tLRPC$TL_account_setPrivacy2.key = new TLRPC$TL_inputPrivacyKeyAddedByPhone();
                if (this.currentSubType == 0) {
                    tLRPC$TL_account_setPrivacy2.rules.add(new TLRPC$InputPrivacyRule() { // from class: org.telegram.tgnet.TLRPC$TL_inputPrivacyValueAllowAll
                        public static int constructor = 407582158;

                        @Override // org.telegram.tgnet.TLObject
                        public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                            abstractSerializedData.writeInt32(constructor);
                        }
                    });
                } else {
                    tLRPC$TL_account_setPrivacy2.rules.add(new TLRPC$InputPrivacyRule() { // from class: org.telegram.tgnet.TLRPC$TL_inputPrivacyValueAllowContacts
                        public static int constructor = 218751099;

                        @Override // org.telegram.tgnet.TLObject
                        public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                            abstractSerializedData.writeInt32(constructor);
                        }
                    });
                }
                ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_account_setPrivacy2, new RequestDelegate() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda12
                    @Override // org.telegram.tgnet.RequestDelegate
                    public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                        PrivacyControlActivity.this.lambda$applyCurrentPrivacySettings$11(tLObject, tLRPC$TL_error);
                    }
                }, 2);
            }
        } else if (i == 5) {
            tLRPC$TL_account_setPrivacy.key = new TLRPC$TL_inputPrivacyKeyForwards();
        } else if (i == 4) {
            tLRPC$TL_account_setPrivacy.key = new TLRPC$TL_inputPrivacyKeyProfilePhoto();
        } else if (i == 3) {
            tLRPC$TL_account_setPrivacy.key = new TLRPC$TL_inputPrivacyKeyPhoneP2P();
        } else if (i == 2) {
            tLRPC$TL_account_setPrivacy.key = new TLRPC$TL_inputPrivacyKeyPhoneCall();
        } else if (i == 1) {
            tLRPC$TL_account_setPrivacy.key = new TLRPC$TL_inputPrivacyKeyChatInvite();
        } else if (i == 8) {
            tLRPC$TL_account_setPrivacy.key = new TLRPC$TL_inputPrivacyKeyVoiceMessages();
        } else {
            tLRPC$TL_account_setPrivacy.key = new TLRPC$TL_inputPrivacyKeyStatusTimestamp();
        }
        if (this.currentType != 0 && this.currentPlus.size() > 0) {
            TLRPC$TL_inputPrivacyValueAllowUsers tLRPC$TL_inputPrivacyValueAllowUsers = new TLRPC$TL_inputPrivacyValueAllowUsers();
            TLRPC$TL_inputPrivacyValueAllowChatParticipants tLRPC$TL_inputPrivacyValueAllowChatParticipants = new TLRPC$TL_inputPrivacyValueAllowChatParticipants();
            for (int i2 = 0; i2 < this.currentPlus.size(); i2++) {
                long longValue = this.currentPlus.get(i2).longValue();
                if (DialogObject.isUserDialog(longValue)) {
                    TLRPC$User user = MessagesController.getInstance(this.currentAccount).getUser(Long.valueOf(longValue));
                    if (user != null && (inputUser2 = MessagesController.getInstance(this.currentAccount).getInputUser(user)) != null) {
                        tLRPC$TL_inputPrivacyValueAllowUsers.users.add(inputUser2);
                    }
                } else {
                    tLRPC$TL_inputPrivacyValueAllowChatParticipants.chats.add(Long.valueOf(-longValue));
                }
            }
            tLRPC$TL_account_setPrivacy.rules.add(tLRPC$TL_inputPrivacyValueAllowUsers);
            tLRPC$TL_account_setPrivacy.rules.add(tLRPC$TL_inputPrivacyValueAllowChatParticipants);
        }
        if (this.currentType != 1 && this.currentMinus.size() > 0) {
            TLRPC$TL_inputPrivacyValueDisallowUsers tLRPC$TL_inputPrivacyValueDisallowUsers = new TLRPC$TL_inputPrivacyValueDisallowUsers();
            TLRPC$TL_inputPrivacyValueDisallowChatParticipants tLRPC$TL_inputPrivacyValueDisallowChatParticipants = new TLRPC$TL_inputPrivacyValueDisallowChatParticipants();
            for (int i3 = 0; i3 < this.currentMinus.size(); i3++) {
                long longValue2 = this.currentMinus.get(i3).longValue();
                if (DialogObject.isUserDialog(longValue2)) {
                    TLRPC$User user2 = getMessagesController().getUser(Long.valueOf(longValue2));
                    if (user2 != null && (inputUser = getMessagesController().getInputUser(user2)) != null) {
                        tLRPC$TL_inputPrivacyValueDisallowUsers.users.add(inputUser);
                    }
                } else {
                    tLRPC$TL_inputPrivacyValueDisallowChatParticipants.chats.add(Long.valueOf(-longValue2));
                }
            }
            tLRPC$TL_account_setPrivacy.rules.add(tLRPC$TL_inputPrivacyValueDisallowUsers);
            tLRPC$TL_account_setPrivacy.rules.add(tLRPC$TL_inputPrivacyValueDisallowChatParticipants);
        }
        int i4 = this.currentType;
        if (i4 == 0) {
            tLRPC$TL_account_setPrivacy.rules.add(new TLRPC$InputPrivacyRule() { // from class: org.telegram.tgnet.TLRPC$TL_inputPrivacyValueAllowAll
                public static int constructor = 407582158;

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                    abstractSerializedData.writeInt32(constructor);
                }
            });
        } else if (i4 == 1) {
            tLRPC$TL_account_setPrivacy.rules.add(new TLRPC$InputPrivacyRule() { // from class: org.telegram.tgnet.TLRPC$TL_inputPrivacyValueDisallowAll
                public static int constructor = -697604407;

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                    abstractSerializedData.writeInt32(constructor);
                }
            });
        } else if (i4 == 2) {
            tLRPC$TL_account_setPrivacy.rules.add(new TLRPC$InputPrivacyRule() { // from class: org.telegram.tgnet.TLRPC$TL_inputPrivacyValueAllowContacts
                public static int constructor = 218751099;

                @Override // org.telegram.tgnet.TLObject
                public void serializeToStream(AbstractSerializedData abstractSerializedData) {
                    abstractSerializedData.writeInt32(constructor);
                }
            });
        }
        final AlertDialog alertDialog = null;
        if (getParentActivity() != null) {
            alertDialog = new AlertDialog(getParentActivity(), 3);
            alertDialog.setCanCancel(false);
            alertDialog.show();
        }
        ConnectionsManager.getInstance(this.currentAccount).sendRequest(tLRPC$TL_account_setPrivacy, new RequestDelegate() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda13
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                PrivacyControlActivity.this.lambda$applyCurrentPrivacySettings$13(alertDialog, tLObject, tLRPC$TL_error);
            }
        }, 2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyCurrentPrivacySettings$11(final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda7
            @Override // java.lang.Runnable
            public final void run() {
                PrivacyControlActivity.this.lambda$applyCurrentPrivacySettings$10(tLRPC$TL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyCurrentPrivacySettings$10(TLRPC$TL_error tLRPC$TL_error, TLObject tLObject) {
        if (tLRPC$TL_error == null) {
            ContactsController.getInstance(this.currentAccount).setPrivacyRules(((TLRPC$TL_account_privacyRules) tLObject).rules, 7);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyCurrentPrivacySettings$13(final AlertDialog alertDialog, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda8
            @Override // java.lang.Runnable
            public final void run() {
                PrivacyControlActivity.this.lambda$applyCurrentPrivacySettings$12(alertDialog, tLRPC$TL_error, tLObject);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$applyCurrentPrivacySettings$12(AlertDialog alertDialog, TLRPC$TL_error tLRPC$TL_error, TLObject tLObject) {
        if (alertDialog != null) {
            try {
                alertDialog.dismiss();
            } catch (Exception e) {
                FileLog.m49e(e);
            }
        }
        if (tLRPC$TL_error == null) {
            TLRPC$TL_account_privacyRules tLRPC$TL_account_privacyRules = (TLRPC$TL_account_privacyRules) tLObject;
            MessagesController.getInstance(this.currentAccount).putUsers(tLRPC$TL_account_privacyRules.users, false);
            MessagesController.getInstance(this.currentAccount).putChats(tLRPC$TL_account_privacyRules.chats, false);
            ContactsController.getInstance(this.currentAccount).setPrivacyRules(tLRPC$TL_account_privacyRules.rules, this.rulesType);
            finishFragment();
            return;
        }
        showErrorAlert();
    }

    private void showErrorAlert() {
        if (getParentActivity() == null) {
            return;
        }
        AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
        builder.setTitle(LocaleController.getString("AppName", C3290R.string.AppName));
        builder.setMessage(LocaleController.getString("PrivacyFloodControlError", C3290R.string.PrivacyFloodControlError));
        builder.setPositiveButton(LocaleController.getString("OK", C3290R.string.OK), null);
        showDialog(builder.create());
    }

    private void checkPrivacy() {
        this.currentPlus = new ArrayList<>();
        this.currentMinus = new ArrayList<>();
        ArrayList<TLRPC$PrivacyRule> privacyRules = ContactsController.getInstance(this.currentAccount).getPrivacyRules(this.rulesType);
        if (this.rulesType == 101) {
            this.currentType = this.walletAccess;
            this.currentPlus.addAll(this.walletWhitelist);
        } else if (privacyRules == null || privacyRules.size() == 0) {
            this.currentType = 1;
        } else {
            boolean z = true;
            for (int i = 0; i < privacyRules.size(); i++) {
                TLRPC$PrivacyRule tLRPC$PrivacyRule = privacyRules.get(i);
                if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueAllowChatParticipants) {
                    TLRPC$TL_privacyValueAllowChatParticipants tLRPC$TL_privacyValueAllowChatParticipants = (TLRPC$TL_privacyValueAllowChatParticipants) tLRPC$PrivacyRule;
                    int size = tLRPC$TL_privacyValueAllowChatParticipants.chats.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        this.currentPlus.add(Long.valueOf(-tLRPC$TL_privacyValueAllowChatParticipants.chats.get(i2).longValue()));
                    }
                } else if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueDisallowChatParticipants) {
                    TLRPC$TL_privacyValueDisallowChatParticipants tLRPC$TL_privacyValueDisallowChatParticipants = (TLRPC$TL_privacyValueDisallowChatParticipants) tLRPC$PrivacyRule;
                    int size2 = tLRPC$TL_privacyValueDisallowChatParticipants.chats.size();
                    for (int i3 = 0; i3 < size2; i3++) {
                        this.currentMinus.add(Long.valueOf(-tLRPC$TL_privacyValueDisallowChatParticipants.chats.get(i3).longValue()));
                    }
                } else if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueAllowUsers) {
                    this.currentPlus.addAll(((TLRPC$TL_privacyValueAllowUsers) tLRPC$PrivacyRule).users);
                } else if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueDisallowUsers) {
                    this.currentMinus.addAll(((TLRPC$TL_privacyValueDisallowUsers) tLRPC$PrivacyRule).users);
                } else if (z) {
                    if (tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueAllowAll) {
                        z = false;
                    } else {
                        z = tLRPC$PrivacyRule instanceof TLRPC$TL_privacyValueDisallowAll ? true : true;
                    }
                }
            }
            if (!z || (z && this.currentMinus.size() > 0)) {
                this.currentType = 0;
            } else if (z || (z && this.currentMinus.size() > 0 && this.currentPlus.size() > 0)) {
                this.currentType = 2;
            } else if (z || (z && this.currentPlus.size() > 0)) {
                this.currentType = 1;
            }
            View view = this.doneButton;
            if (view != null) {
                view.setAlpha(BitmapDescriptorFactory.HUE_RED);
                this.doneButton.setScaleX(BitmapDescriptorFactory.HUE_RED);
                this.doneButton.setScaleY(BitmapDescriptorFactory.HUE_RED);
                this.doneButton.setEnabled(false);
            }
        }
        this.initialPlus.clear();
        this.initialMinus.clear();
        this.initialRulesType = this.currentType;
        this.initialPlus.addAll(this.currentPlus);
        this.initialMinus.addAll(this.currentMinus);
        if (this.rulesType == 6) {
            ArrayList<TLRPC$PrivacyRule> privacyRules2 = ContactsController.getInstance(this.currentAccount).getPrivacyRules(7);
            if (privacyRules2 == null || privacyRules2.size() == 0) {
                this.currentSubType = 0;
            } else {
                int i4 = 0;
                while (true) {
                    if (i4 >= privacyRules2.size()) {
                        break;
                    }
                    TLRPC$PrivacyRule tLRPC$PrivacyRule2 = privacyRules2.get(i4);
                    if (tLRPC$PrivacyRule2 instanceof TLRPC$TL_privacyValueAllowAll) {
                        this.currentSubType = 0;
                        break;
                    } else if (tLRPC$PrivacyRule2 instanceof TLRPC$TL_privacyValueDisallowAll) {
                        this.currentSubType = 2;
                        break;
                    } else if (tLRPC$PrivacyRule2 instanceof TLRPC$TL_privacyValueAllowContacts) {
                        this.currentSubType = 1;
                        break;
                    } else {
                        i4++;
                    }
                }
            }
            this.initialRulesSubType = this.currentSubType;
        }
        updateRows(false);
    }

    private boolean hasChanges() {
        if (this.initialAccountRankAccess != this.currentAccountRankAccess) {
            return true;
        }
        int i = this.initialRulesType;
        int i2 = this.currentType;
        if (i != i2) {
            return true;
        }
        if (!(this.rulesType == 6 && i2 == 1 && this.initialRulesSubType != this.currentSubType) && this.initialMinus.size() == this.currentMinus.size() && this.initialPlus.size() == this.currentPlus.size()) {
            Collections.sort(this.initialPlus);
            Collections.sort(this.currentPlus);
            if (this.initialPlus.equals(this.currentPlus)) {
                Collections.sort(this.initialMinus);
                Collections.sort(this.currentMinus);
                return !this.initialMinus.equals(this.currentMinus);
            }
            return true;
        }
        return true;
    }

    private void updateRows(boolean z) {
        RecyclerView.ViewHolder findContainingViewHolder;
        int i;
        int i2;
        DiffCallback diffCallback = null;
        if (z) {
            DiffCallback diffCallback2 = new DiffCallback();
            diffCallback2.fillPositions(diffCallback2.oldPositionToItem);
            diffCallback2.oldRowCount = this.rowCount;
            diffCallback = diffCallback2;
        }
        this.photoForRestRow = -1;
        this.currentPhotoForRestRow = -1;
        this.photoForRestDescriptionRow = -1;
        this.rowCount = 0;
        int i3 = this.rulesType;
        if (i3 == 5) {
            this.rowCount = 0 + 1;
            this.messageRow = 0;
        } else {
            this.messageRow = -1;
        }
        int i4 = this.rowCount;
        int i5 = i4 + 1;
        this.rowCount = i5;
        this.sectionRow = i4;
        int i6 = i5 + 1;
        this.rowCount = i6;
        this.everybodyRow = i5;
        if (i3 == 101) {
            this.myContactsRow = -1;
        } else {
            this.rowCount = i6 + 1;
            this.myContactsRow = i6;
        }
        if (i3 == 101 || i3 == 4 || i3 == 0 || i3 == 2 || i3 == 3 || i3 == 5 || i3 == 6 || i3 == 8 || i3 == 1) {
            int i7 = this.rowCount;
            this.rowCount = i7 + 1;
            this.nobodyRow = i7;
        } else {
            this.nobodyRow = -1;
        }
        if (i3 == 6 && this.currentType == 1) {
            int i8 = this.rowCount;
            int i9 = i8 + 1;
            this.rowCount = i9;
            this.phoneDetailRow = i8;
            int i10 = i9 + 1;
            this.rowCount = i10;
            this.phoneSectionRow = i9;
            int i11 = i10 + 1;
            this.rowCount = i11;
            this.phoneEverybodyRow = i10;
            this.rowCount = i11 + 1;
            this.phoneContactsRow = i11;
        } else {
            this.phoneDetailRow = -1;
            this.phoneSectionRow = -1;
            this.phoneEverybodyRow = -1;
            this.phoneContactsRow = -1;
        }
        int i12 = this.rowCount;
        int i13 = i12 + 1;
        this.rowCount = i13;
        this.detailRow = i12;
        if (i3 == 101 && this.currentType == 0) {
            this.shareSectionRow = -1;
        } else {
            this.rowCount = i13 + 1;
            this.shareSectionRow = i13;
        }
        if (i3 == 101 && this.currentType == 1) {
            int i14 = this.rowCount;
            this.rowCount = i14 + 1;
            this.alwaysShareRow = i14;
        } else {
            int i15 = this.currentType;
            if (i15 == 1 || i15 == 2) {
                int i16 = this.rowCount;
                this.rowCount = i16 + 1;
                this.alwaysShareRow = i16;
            } else {
                this.alwaysShareRow = -1;
            }
        }
        if (i3 == 101) {
            this.neverShareRow = -1;
        } else {
            int i17 = this.currentType;
            if (i17 == 0 || i17 == 2) {
                int i18 = this.rowCount;
                this.rowCount = i18 + 1;
                this.neverShareRow = i18;
            } else {
                this.neverShareRow = -1;
            }
        }
        if (i3 == 101 && this.currentType == 0) {
            this.shareSectionRow = -1;
        } else {
            int i19 = this.rowCount;
            this.rowCount = i19 + 1;
            this.shareDetailRow = i19;
        }
        if (i3 == 2) {
            int i20 = this.rowCount;
            int i21 = i20 + 1;
            this.rowCount = i21;
            this.p2pSectionRow = i20;
            int i22 = i21 + 1;
            this.rowCount = i22;
            this.p2pRow = i21;
            this.rowCount = i22 + 1;
            this.p2pDetailRow = i22;
        } else {
            this.p2pSectionRow = -1;
            this.p2pRow = -1;
            this.p2pDetailRow = -1;
        }
        if (i3 == 4 && (this.currentMinus.size() > 0 || (i2 = this.currentType) == 2 || i2 == 1)) {
            int i23 = this.rowCount;
            int i24 = i23 + 1;
            this.rowCount = i24;
            this.photoForRestRow = i23;
            if (this.avatarForRest != null) {
                this.rowCount = i24 + 1;
                this.currentPhotoForRestRow = i24;
            }
            int i25 = this.rowCount;
            this.rowCount = i25 + 1;
            this.photoForRestDescriptionRow = i25;
        }
        if (this.rulesType == 101) {
            int i26 = this.rowCount;
            int i27 = i26 + 1;
            this.rowCount = i27;
            this.rankSectionRow = i26;
            int i28 = i27 + 1;
            this.rowCount = i28;
            this.rankEverybodyRow = i27;
            int i29 = i28 + 1;
            this.rowCount = i29;
            this.rankNobodyRow = i28;
            this.rowCount = i29 + 1;
            this.rankDetailsRow = i29;
        } else {
            this.rankDetailsRow = -1;
            this.rankNobodyRow = -1;
            this.rankEverybodyRow = -1;
            this.rankSectionRow = -1;
        }
        setMessageText();
        ListAdapter listAdapter = this.listAdapter;
        if (listAdapter != null) {
            if (z) {
                int childCount = this.listView.getChildCount();
                for (int i30 = 0; i30 < childCount; i30++) {
                    View childAt = this.listView.getChildAt(i30);
                    if ((childAt instanceof RadioCell) && (findContainingViewHolder = this.listView.findContainingViewHolder(childAt)) != null) {
                        int adapterPosition = findContainingViewHolder.getAdapterPosition();
                        RadioCell radioCell = (RadioCell) childAt;
                        int i31 = this.rankEverybodyRow;
                        if (adapterPosition == i31 || adapterPosition == this.rankNobodyRow) {
                            radioCell.setChecked(this.currentAccountRankAccess == (adapterPosition == i31 ? 0 : 1), true);
                        } else {
                            int i32 = this.everybodyRow;
                            if (adapterPosition == i32 || adapterPosition == this.myContactsRow || adapterPosition == this.nobodyRow) {
                                if (adapterPosition == i32) {
                                    i = 0;
                                } else {
                                    i = adapterPosition == this.myContactsRow ? 2 : 1;
                                }
                                radioCell.setChecked(this.currentType == i, true);
                            } else {
                                radioCell.setChecked(this.currentSubType == (adapterPosition == this.phoneContactsRow ? 1 : 0), true);
                            }
                        }
                    }
                }
                diffCallback.fillPositions(diffCallback.newPositionToItem);
                DiffUtil.calculateDiff(diffCallback).dispatchUpdatesTo(this.listAdapter);
                AndroidUtilities.updateVisibleRows(this.listView);
                return;
            }
            listAdapter.notifyDataSetChanged();
        }
    }

    private void setMessageText() {
        MessageCell messageCell = this.messageCell;
        if (messageCell != null) {
            messageCell.messageObject.messageOwner.fwd_from.from_id = new TLRPC$TL_peerUser();
            int i = this.currentType;
            if (i == 0) {
                this.messageCell.hintView.setOverrideText(LocaleController.getString("PrivacyForwardsEverybody", C3290R.string.PrivacyForwardsEverybody));
                this.messageCell.messageObject.messageOwner.fwd_from.from_id.user_id = 1L;
            } else if (i == 1) {
                this.messageCell.hintView.setOverrideText(LocaleController.getString("PrivacyForwardsNobody", C3290R.string.PrivacyForwardsNobody));
                this.messageCell.messageObject.messageOwner.fwd_from.from_id.user_id = 0L;
            } else {
                this.messageCell.hintView.setOverrideText(LocaleController.getString("PrivacyForwardsContacts", C3290R.string.PrivacyForwardsContacts));
                this.messageCell.messageObject.messageOwner.fwd_from.from_id.user_id = 1L;
            }
            this.messageCell.cell.forceResetMessageObject();
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onResume() {
        super.onResume();
        updateRows(false);
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onResume();
        }
    }

    @Override // com.iMe.p031ui.base.mvp.MvpFragment, org.telegram.p044ui.ActionBar.BaseFragment
    public void onPause() {
        super.onPause();
        ImageUpdater imageUpdater = this.imageUpdater;
        if (imageUpdater != null) {
            imageUpdater.onPause();
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean onBackPressed() {
        return checkDiscard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void processDone() {
        if (getParentActivity() == null) {
            return;
        }
        int i = this.rulesType;
        if (i == 101) {
            processWalletPrivacyChanges();
            return;
        }
        if (this.currentType != 0 && i == 0) {
            final SharedPreferences globalMainSettings = MessagesController.getGlobalMainSettings();
            if (!globalMainSettings.getBoolean("privacyAlertShowed", false)) {
                AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
                if (this.rulesType == 1) {
                    builder.setMessage(LocaleController.getString("WhoCanAddMeInfo", C3290R.string.WhoCanAddMeInfo));
                } else {
                    builder.setMessage(LocaleController.getString("CustomHelp", C3290R.string.CustomHelp));
                }
                builder.setTitle(LocaleController.getString("AppName", C3290R.string.AppName));
                builder.setPositiveButton(LocaleController.getString("OK", C3290R.string.OK), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda2
                    @Override // android.content.DialogInterface.OnClickListener
                    public final void onClick(DialogInterface dialogInterface, int i2) {
                        PrivacyControlActivity.this.lambda$processDone$14(globalMainSettings, dialogInterface, i2);
                    }
                });
                builder.setNegativeButton(LocaleController.getString("Cancel", C3290R.string.Cancel), null);
                showDialog(builder.create());
                return;
            }
        }
        applyCurrentPrivacySettings();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$processDone$14(SharedPreferences sharedPreferences, DialogInterface dialogInterface, int i) {
        applyCurrentPrivacySettings();
        sharedPreferences.edit().putBoolean("privacyAlertShowed", true).commit();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean checkDiscard() {
        if (this.doneButton.getAlpha() == 1.0f) {
            AlertDialog.Builder builder = new AlertDialog.Builder(getParentActivity());
            builder.setTitle(LocaleController.getString("UserRestrictionsApplyChanges", C3290R.string.UserRestrictionsApplyChanges));
            builder.setMessage(LocaleController.getString("PrivacySettingsChangedAlert", C3290R.string.PrivacySettingsChangedAlert));
            builder.setPositiveButton(LocaleController.getString("ApplyTheme", C3290R.string.ApplyTheme), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    PrivacyControlActivity.this.lambda$checkDiscard$15(dialogInterface, i);
                }
            });
            builder.setNegativeButton(LocaleController.getString("PassportDiscard", C3290R.string.PassportDiscard), new DialogInterface.OnClickListener() { // from class: org.telegram.ui.PrivacyControlActivity$$ExternalSyntheticLambda1
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    PrivacyControlActivity.this.lambda$checkDiscard$16(dialogInterface, i);
                }
            });
            showDialog(builder.create());
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$15(DialogInterface dialogInterface, int i) {
        processDone();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void lambda$checkDiscard$16(DialogInterface dialogInterface, int i) {
        finishFragment();
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public boolean canBeginSlide() {
        return checkDiscard();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.PrivacyControlActivity$ListAdapter */
    /* loaded from: classes5.dex */
    public class ListAdapter extends RecyclerListView.SelectionAdapter {
        private Context mContext;

        public ListAdapter(Context context) {
            this.mContext = context;
        }

        @Override // org.telegram.p044ui.Components.RecyclerListView.SelectionAdapter
        public boolean isEnabled(RecyclerView.ViewHolder viewHolder) {
            int adapterPosition = viewHolder.getAdapterPosition();
            if (adapterPosition == PrivacyControlActivity.this.rankNobodyRow || adapterPosition == PrivacyControlActivity.this.rankEverybodyRow || adapterPosition == PrivacyControlActivity.this.nobodyRow || adapterPosition == PrivacyControlActivity.this.everybodyRow || adapterPosition == PrivacyControlActivity.this.myContactsRow || adapterPosition == PrivacyControlActivity.this.neverShareRow || adapterPosition == PrivacyControlActivity.this.alwaysShareRow) {
                return true;
            }
            return (adapterPosition == PrivacyControlActivity.this.p2pRow && !ContactsController.getInstance(((BaseFragment) PrivacyControlActivity.this).currentAccount).getLoadingPrivacyInfo(3)) || adapterPosition == PrivacyControlActivity.this.currentPhotoForRestRow || adapterPosition == PrivacyControlActivity.this.photoForRestDescriptionRow || adapterPosition == PrivacyControlActivity.this.photoForRestRow;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return PrivacyControlActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i) {
            View textSettingsCell;
            if (i == 0) {
                textSettingsCell = new TextSettingsCell(this.mContext);
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 1) {
                textSettingsCell = new TextInfoPrivacyCell(this.mContext);
            } else if (i == 2) {
                textSettingsCell = new HeaderCell(this.mContext);
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 3) {
                textSettingsCell = new RadioCell(this.mContext);
                textSettingsCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
            } else if (i == 4) {
                textSettingsCell = PrivacyControlActivity.this.messageCell;
            } else if (i == 6) {
                PrivacyControlActivity.this.setAvatarCell = new TextCell(PrivacyControlActivity.this.getContext());
                if (PrivacyControlActivity.this.avatarForRest == null) {
                    PrivacyControlActivity.this.setAvatarCell.setTextAndIcon(LocaleController.formatString("SetPhotoForRest", C3290R.string.SetPhotoForRest, new Object[0]), C3290R.C3292drawable.msg_addphoto, false);
                } else {
                    PrivacyControlActivity.this.setAvatarCell.setTextAndIcon(LocaleController.formatString("UpdatePhotoForRest", C3290R.string.UpdatePhotoForRest, new Object[0]), C3290R.C3292drawable.msg_addphoto, true);
                }
                PrivacyControlActivity.this.setAvatarCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                PrivacyControlActivity.this.setAvatarCell.setColors(Theme.key_windowBackgroundWhiteBlueIcon, Theme.key_windowBackgroundWhiteBlueButton);
                PrivacyControlActivity privacyControlActivity = PrivacyControlActivity.this;
                int i2 = C3290R.raw.camera_outline;
                privacyControlActivity.cameraDrawable = new RLottieDrawable(i2, "" + i2, AndroidUtilities.m54dp(50), AndroidUtilities.m54dp(50), false, null);
                PrivacyControlActivity.this.setAvatarCell.imageView.setTranslationX((float) (-AndroidUtilities.m54dp(8)));
                PrivacyControlActivity.this.setAvatarCell.imageView.setAnimation(PrivacyControlActivity.this.cameraDrawable);
                PrivacyControlActivity.this.setAvatarCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                textSettingsCell = PrivacyControlActivity.this.setAvatarCell;
            } else if (i != 7) {
                textSettingsCell = new ShadowSectionCell(this.mContext);
                CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundGray)), Theme.getThemedDrawableByKey(this.mContext, C3290R.C3292drawable.greydivider, Theme.key_windowBackgroundGrayShadow));
                combinedDrawable.setFullsize(true);
                textSettingsCell.setBackgroundDrawable(combinedDrawable);
            } else {
                PrivacyControlActivity.this.oldAvatarView = new BackupImageView(PrivacyControlActivity.this.getContext());
                PrivacyControlActivity.this.oldPhotoCell = new TextCell(PrivacyControlActivity.this.getContext()) { // from class: org.telegram.ui.PrivacyControlActivity.ListAdapter.1
                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // org.telegram.p044ui.Cells.TextCell, android.widget.FrameLayout, android.view.View
                    public void onMeasure(int i3, int i4) {
                        super.onMeasure(i3, i4);
                        PrivacyControlActivity.this.oldAvatarView.measure(View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(30), 1073741824), View.MeasureSpec.makeMeasureSpec(AndroidUtilities.m54dp(30), 1073741824));
                        PrivacyControlActivity.this.oldAvatarView.setRoundRadius(AndroidUtilities.m54dp(30));
                    }

                    /* JADX INFO: Access modifiers changed from: protected */
                    @Override // org.telegram.p044ui.Cells.TextCell, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
                    public void onLayout(boolean z, int i3, int i4, int i5, int i6) {
                        super.onLayout(z, i3, i4, i5, i6);
                        int m54dp = AndroidUtilities.m54dp(21);
                        int measuredHeight = (getMeasuredHeight() - PrivacyControlActivity.this.oldAvatarView.getMeasuredHeight()) / 2;
                        PrivacyControlActivity.this.oldAvatarView.layout(m54dp, measuredHeight, PrivacyControlActivity.this.oldAvatarView.getMeasuredWidth() + m54dp, PrivacyControlActivity.this.oldAvatarView.getMeasuredHeight() + measuredHeight);
                    }
                };
                if (PrivacyControlActivity.this.avatarForRest != null) {
                    if (PrivacyControlActivity.this.avatarForRestPhoto != null) {
                        PrivacyControlActivity.this.oldAvatarView.setImage(ImageLocation.getForPhoto(PrivacyControlActivity.this.avatarForRest, PrivacyControlActivity.this.avatarForRestPhoto), "50_50", (Drawable) null, UserConfig.getInstance(((BaseFragment) PrivacyControlActivity.this).currentAccount).getCurrentUser());
                    } else {
                        PrivacyControlActivity.this.oldAvatarView.setImage(ImageLocation.getForLocal(PrivacyControlActivity.this.avatarForRest.location), "50_50", (Drawable) null, UserConfig.getInstance(((BaseFragment) PrivacyControlActivity.this).currentAccount).getCurrentUser());
                    }
                }
                PrivacyControlActivity.this.oldPhotoCell.addView(PrivacyControlActivity.this.oldAvatarView, LayoutHelper.createFrame(30, 30, 16, 21, 0, 21, 0));
                PrivacyControlActivity.this.oldPhotoCell.setText(LocaleController.getString("RemovePublicPhoto", C3290R.string.RemovePublicPhoto), false);
                PrivacyControlActivity.this.oldPhotoCell.getImageView().setVisibility(0);
                PrivacyControlActivity.this.oldPhotoCell.setBackgroundDrawable(Theme.getSelectorDrawable(false));
                TextCell textCell = PrivacyControlActivity.this.oldPhotoCell;
                int i3 = Theme.key_text_RedRegular;
                textCell.setColors(i3, i3);
                PrivacyControlActivity.this.oldPhotoCell.setBackgroundColor(Theme.getColor(Theme.key_windowBackgroundWhite));
                textSettingsCell = PrivacyControlActivity.this.oldPhotoCell;
            }
            return new RecyclerListView.Holder(textSettingsCell);
        }

        private int getUsersCount(ArrayList<Long> arrayList) {
            int i = 0;
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                long longValue = arrayList.get(i2).longValue();
                if (longValue > 0) {
                    i++;
                } else {
                    TLRPC$Chat chat = PrivacyControlActivity.this.getMessagesController().getChat(Long.valueOf(-longValue));
                    if (chat != null) {
                        i += chat.participants_count;
                    }
                }
            }
            return i;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder viewHolder, int i) {
            String formatRulesString;
            String string;
            String string2;
            int itemViewType = viewHolder.getItemViewType();
            r5 = 0;
            r5 = 0;
            r5 = 0;
            int i2 = 0;
            if (itemViewType == 0) {
                TextSettingsCell textSettingsCell = (TextSettingsCell) viewHolder.itemView;
                if (i == PrivacyControlActivity.this.alwaysShareRow) {
                    if (PrivacyControlActivity.this.currentPlus.size() != 0) {
                        string2 = LocaleController.formatPluralString("Users", getUsersCount(PrivacyControlActivity.this.currentPlus), new Object[0]);
                    } else {
                        string2 = LocaleController.getString("EmpryUsersPlaceholder", C3290R.string.EmpryUsersPlaceholder);
                    }
                    if (PrivacyControlActivity.this.rulesType != 101) {
                        if (PrivacyControlActivity.this.rulesType == 0 || PrivacyControlActivity.this.rulesType == 4) {
                            textSettingsCell.setTextAndValue(LocaleController.getString("AlwaysShareWith", C3290R.string.AlwaysShareWith), string2, PrivacyControlActivity.this.neverShareRow != -1);
                            return;
                        } else {
                            textSettingsCell.setTextAndValue(LocaleController.getString("AlwaysAllow", C3290R.string.AlwaysAllow), string2, PrivacyControlActivity.this.neverShareRow != -1);
                            return;
                        }
                    }
                    textSettingsCell.setTextAndValue(LocaleController.getString("AlwaysAllow", C3290R.string.AlwaysAllow), string2, false);
                } else if (i == PrivacyControlActivity.this.neverShareRow) {
                    if (PrivacyControlActivity.this.currentMinus.size() != 0) {
                        string = LocaleController.formatPluralString("Users", getUsersCount(PrivacyControlActivity.this.currentMinus), new Object[0]);
                    } else {
                        string = LocaleController.getString("EmpryUsersPlaceholder", C3290R.string.EmpryUsersPlaceholder);
                    }
                    if (PrivacyControlActivity.this.rulesType != 0 && PrivacyControlActivity.this.rulesType != 4) {
                        textSettingsCell.setTextAndValue(LocaleController.getString("NeverAllow", C3290R.string.NeverAllow), string, false);
                    } else {
                        textSettingsCell.setTextAndValue(LocaleController.getString("NeverShareWith", C3290R.string.NeverShareWith), string, false);
                    }
                } else if (i == PrivacyControlActivity.this.p2pRow) {
                    if (ContactsController.getInstance(((BaseFragment) PrivacyControlActivity.this).currentAccount).getLoadingPrivacyInfo(3)) {
                        formatRulesString = LocaleController.getString("Loading", C3290R.string.Loading);
                    } else {
                        formatRulesString = PrivacySettingsActivity.formatRulesString(PrivacyControlActivity.this.getAccountInstance(), 3);
                    }
                    textSettingsCell.setTextAndValue(LocaleController.getString("PrivacyP2P2", C3290R.string.PrivacyP2P2), formatRulesString, false);
                }
            } else if (itemViewType == 1) {
                TextInfoPrivacyCell textInfoPrivacyCell = (TextInfoPrivacyCell) viewHolder.itemView;
                if (i == PrivacyControlActivity.this.rankDetailsRow) {
                    if (PrivacyControlActivity.this.rulesType == 101) {
                        textInfoPrivacyCell.setText(LocaleController.getInternalString(C3290R.string.wallet_crypto_privacy_who_can_see_account_rank_section_description));
                    }
                } else if (i == PrivacyControlActivity.this.detailRow) {
                    if (PrivacyControlActivity.this.rulesType != 101) {
                        if (PrivacyControlActivity.this.rulesType != 6) {
                            if (PrivacyControlActivity.this.rulesType != 5) {
                                if (PrivacyControlActivity.this.rulesType != 4) {
                                    if (PrivacyControlActivity.this.rulesType != 3) {
                                        if (PrivacyControlActivity.this.rulesType != 2) {
                                            if (PrivacyControlActivity.this.rulesType != 1) {
                                                if (PrivacyControlActivity.this.rulesType == 8) {
                                                    textInfoPrivacyCell.setText(LocaleController.getString("PrivacyVoiceMessagesInfo", C3290R.string.PrivacyVoiceMessagesInfo));
                                                } else {
                                                    textInfoPrivacyCell.setText(LocaleController.getString("CustomHelp", C3290R.string.CustomHelp));
                                                }
                                            } else {
                                                textInfoPrivacyCell.setText(LocaleController.getString("WhoCanAddMeInfo", C3290R.string.WhoCanAddMeInfo));
                                            }
                                        } else {
                                            textInfoPrivacyCell.setText(LocaleController.getString("WhoCanCallMeInfo", C3290R.string.WhoCanCallMeInfo));
                                        }
                                    } else {
                                        textInfoPrivacyCell.setText(LocaleController.getString("PrivacyCallsP2PHelp", C3290R.string.PrivacyCallsP2PHelp));
                                    }
                                } else {
                                    textInfoPrivacyCell.setText(LocaleController.getString("PrivacyProfilePhotoInfo", C3290R.string.PrivacyProfilePhotoInfo));
                                }
                            } else {
                                textInfoPrivacyCell.setText(LocaleController.getString("PrivacyForwardsInfo", C3290R.string.PrivacyForwardsInfo));
                            }
                        } else {
                            PrivacyControlActivity privacyControlActivity = PrivacyControlActivity.this;
                            if (privacyControlActivity.prevSubtypeContacts = privacyControlActivity.currentType == 1 && PrivacyControlActivity.this.currentSubType == 1) {
                                textInfoPrivacyCell.setText(LocaleController.getString("PrivacyPhoneInfo3", C3290R.string.PrivacyPhoneInfo3));
                            } else {
                                SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                                final String format = String.format(Locale.ENGLISH, "https://t.me/+%s", PrivacyControlActivity.this.getUserConfig().getClientPhone());
                                SpannableString spannableString = new SpannableString(format);
                                spannableString.setSpan(new ClickableSpan() { // from class: org.telegram.ui.PrivacyControlActivity.ListAdapter.2
                                    @Override // android.text.style.ClickableSpan
                                    public void onClick(View view) {
                                        ((ClipboardManager) ApplicationLoader.applicationContext.getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText("label", format));
                                        BulletinFactory.m29of(PrivacyControlActivity.this).createCopyLinkBulletin(LocaleController.getString("LinkCopied", C3290R.string.LinkCopied), PrivacyControlActivity.this.getResourceProvider()).show();
                                    }
                                }, 0, format.length(), 33);
                                spannableStringBuilder.append((CharSequence) LocaleController.getString("PrivacyPhoneInfo", C3290R.string.PrivacyPhoneInfo)).append((CharSequence) "\n\n").append((CharSequence) LocaleController.getString("PrivacyPhoneInfo4", C3290R.string.PrivacyPhoneInfo4)).append((CharSequence) "\n").append((CharSequence) spannableString);
                                textInfoPrivacyCell.setText(spannableStringBuilder);
                            }
                        }
                    } else {
                        textInfoPrivacyCell.setText(LocaleController.getInternalString(C3290R.string.wallet_crypto_privacy_who_can_ask_section_description));
                    }
                    i2 = C3290R.C3292drawable.greydivider;
                } else if (i == PrivacyControlActivity.this.shareDetailRow) {
                    if (PrivacyControlActivity.this.rulesType != 101) {
                        if (PrivacyControlActivity.this.rulesType != 6) {
                            if (PrivacyControlActivity.this.rulesType != 5) {
                                if (PrivacyControlActivity.this.rulesType == 4) {
                                    if (PrivacyControlActivity.this.currentType != 2) {
                                        if (PrivacyControlActivity.this.currentType == 0) {
                                            textInfoPrivacyCell.setText(AndroidUtilities.replaceTags(LocaleController.getString("PrivacyProfilePhotoInfo3", C3290R.string.PrivacyProfilePhotoInfo3)));
                                        } else {
                                            textInfoPrivacyCell.setText(LocaleController.getString("PrivacyProfilePhotoInfo4", C3290R.string.PrivacyProfilePhotoInfo4));
                                        }
                                    } else {
                                        textInfoPrivacyCell.setText(AndroidUtilities.replaceTags(LocaleController.getString("PrivacyProfilePhotoInfo5", C3290R.string.PrivacyProfilePhotoInfo5)));
                                    }
                                } else if (PrivacyControlActivity.this.rulesType != 3) {
                                    if (PrivacyControlActivity.this.rulesType != 2) {
                                        if (PrivacyControlActivity.this.rulesType != 1) {
                                            if (PrivacyControlActivity.this.rulesType == 8) {
                                                textInfoPrivacyCell.setText(LocaleController.getString("PrivacyVoiceMessagesInfo2", C3290R.string.PrivacyVoiceMessagesInfo2));
                                            } else {
                                                textInfoPrivacyCell.setText(LocaleController.getString("CustomShareSettingsHelp", C3290R.string.CustomShareSettingsHelp));
                                            }
                                        } else {
                                            textInfoPrivacyCell.setText(LocaleController.getString("CustomShareInfo", C3290R.string.CustomShareInfo));
                                        }
                                    } else {
                                        textInfoPrivacyCell.setText(LocaleController.getString("CustomCallInfo", C3290R.string.CustomCallInfo));
                                    }
                                } else {
                                    textInfoPrivacyCell.setText(LocaleController.getString("CustomP2PInfo", C3290R.string.CustomP2PInfo));
                                }
                            } else {
                                textInfoPrivacyCell.setText(LocaleController.getString("PrivacyForwardsInfo2", C3290R.string.PrivacyForwardsInfo2));
                            }
                        } else {
                            textInfoPrivacyCell.setText(LocaleController.getString("PrivacyPhoneInfo2", C3290R.string.PrivacyPhoneInfo2));
                        }
                    } else {
                        textInfoPrivacyCell.setText(LocaleController.getInternalString(C3290R.string.wallet_crypto_privacy_add_exception_section_description));
                    }
                    if (PrivacyControlActivity.this.rulesType == 2) {
                        i2 = C3290R.C3292drawable.greydivider;
                    } else {
                        i2 = C3290R.C3292drawable.greydivider_bottom;
                    }
                } else if (i != PrivacyControlActivity.this.p2pDetailRow) {
                    if (i == PrivacyControlActivity.this.photoForRestDescriptionRow) {
                        textInfoPrivacyCell.setText(LocaleController.getString("PhotoForRestDescription", C3290R.string.PhotoForRestDescription));
                    }
                } else {
                    i2 = C3290R.C3292drawable.greydivider_bottom;
                }
                if (i2 != 0) {
                    CombinedDrawable combinedDrawable = new CombinedDrawable(new ColorDrawable(Theme.getColor(Theme.key_windowBackgroundGray)), Theme.getThemedDrawableByKey(this.mContext, i2, Theme.key_windowBackgroundGrayShadow));
                    combinedDrawable.setFullsize(true);
                    textInfoPrivacyCell.setBackgroundDrawable(combinedDrawable);
                }
            } else if (itemViewType != 2) {
                if (itemViewType != 3) {
                    return;
                }
                RadioCell radioCell = (RadioCell) viewHolder.itemView;
                if (i == PrivacyControlActivity.this.rankEverybodyRow) {
                    radioCell.setText(LocaleController.getString("LastSeenEverybody", C3290R.string.LastSeenEverybody), PrivacyControlActivity.this.currentAccountRankAccess == 0, true);
                } else if (i == PrivacyControlActivity.this.rankNobodyRow) {
                    radioCell.setText(LocaleController.getString("LastSeenNobody", C3290R.string.LastSeenNobody), PrivacyControlActivity.this.currentAccountRankAccess == 1, false);
                } else if (i == PrivacyControlActivity.this.everybodyRow || i == PrivacyControlActivity.this.myContactsRow || i == PrivacyControlActivity.this.nobodyRow) {
                    if (i == PrivacyControlActivity.this.everybodyRow) {
                        if (PrivacyControlActivity.this.rulesType == 3) {
                            radioCell.setText(LocaleController.getString("P2PEverybody", C3290R.string.P2PEverybody), PrivacyControlActivity.this.currentType == 0, true);
                        } else {
                            radioCell.setText(LocaleController.getString("LastSeenEverybody", C3290R.string.LastSeenEverybody), PrivacyControlActivity.this.currentType == 0, true);
                        }
                    } else if (i == PrivacyControlActivity.this.myContactsRow) {
                        if (PrivacyControlActivity.this.rulesType == 3) {
                            radioCell.setText(LocaleController.getString("P2PContacts", C3290R.string.P2PContacts), PrivacyControlActivity.this.currentType == 2, PrivacyControlActivity.this.nobodyRow != -1);
                        } else {
                            radioCell.setText(LocaleController.getString("LastSeenContacts", C3290R.string.LastSeenContacts), PrivacyControlActivity.this.currentType == 2, PrivacyControlActivity.this.nobodyRow != -1);
                        }
                    } else if (PrivacyControlActivity.this.rulesType == 3) {
                        radioCell.setText(LocaleController.getString("P2PNobody", C3290R.string.P2PNobody), PrivacyControlActivity.this.currentType == 1, false);
                    } else {
                        radioCell.setText(LocaleController.getString("LastSeenNobody", C3290R.string.LastSeenNobody), PrivacyControlActivity.this.currentType == 1, false);
                    }
                } else if (i == PrivacyControlActivity.this.phoneContactsRow) {
                    radioCell.setText(LocaleController.getString("LastSeenContacts", C3290R.string.LastSeenContacts), PrivacyControlActivity.this.currentSubType == 1, false);
                } else if (i == PrivacyControlActivity.this.phoneEverybodyRow) {
                    radioCell.setText(LocaleController.getString("LastSeenEverybody", C3290R.string.LastSeenEverybody), PrivacyControlActivity.this.currentSubType == 0, true);
                }
            } else {
                HeaderCell headerCell = (HeaderCell) viewHolder.itemView;
                if (i == PrivacyControlActivity.this.rankSectionRow) {
                    if (PrivacyControlActivity.this.rulesType == 101) {
                        headerCell.setText(LocaleController.getInternalString(C3290R.string.wallet_crypto_privacy_who_can_see_account_rank_section_title));
                    }
                } else if (i == PrivacyControlActivity.this.sectionRow) {
                    if (PrivacyControlActivity.this.rulesType != 101) {
                        if (PrivacyControlActivity.this.rulesType != 6) {
                            if (PrivacyControlActivity.this.rulesType != 5) {
                                if (PrivacyControlActivity.this.rulesType != 4) {
                                    if (PrivacyControlActivity.this.rulesType != 3) {
                                        if (PrivacyControlActivity.this.rulesType != 2) {
                                            if (PrivacyControlActivity.this.rulesType != 1) {
                                                if (PrivacyControlActivity.this.rulesType == 8) {
                                                    headerCell.setText(LocaleController.getString("PrivacyVoiceMessagesTitle", C3290R.string.PrivacyVoiceMessagesTitle));
                                                    return;
                                                } else {
                                                    headerCell.setText(LocaleController.getString("LastSeenTitle", C3290R.string.LastSeenTitle));
                                                    return;
                                                }
                                            }
                                            headerCell.setText(LocaleController.getString("WhoCanAddMe", C3290R.string.WhoCanAddMe));
                                            return;
                                        }
                                        headerCell.setText(LocaleController.getString("WhoCanCallMe", C3290R.string.WhoCanCallMe));
                                        return;
                                    }
                                    headerCell.setText(LocaleController.getString("P2PEnabledWith", C3290R.string.P2PEnabledWith));
                                    return;
                                }
                                headerCell.setText(LocaleController.getString("PrivacyProfilePhotoTitle", C3290R.string.PrivacyProfilePhotoTitle));
                                return;
                            }
                            headerCell.setText(LocaleController.getString("PrivacyForwardsTitle", C3290R.string.PrivacyForwardsTitle));
                            return;
                        }
                        headerCell.setText(LocaleController.getString("PrivacyPhoneTitle", C3290R.string.PrivacyPhoneTitle));
                        return;
                    }
                    headerCell.setText(LocaleController.getInternalString(C3290R.string.wallet_crypto_privacy_who_can_ask_section_title));
                } else if (i != PrivacyControlActivity.this.shareSectionRow) {
                    if (i != PrivacyControlActivity.this.p2pSectionRow) {
                        if (i == PrivacyControlActivity.this.phoneSectionRow) {
                            headerCell.setText(LocaleController.getString("PrivacyPhoneTitle2", C3290R.string.PrivacyPhoneTitle2));
                            return;
                        }
                        return;
                    }
                    headerCell.setText(LocaleController.getString("PrivacyP2PHeader", C3290R.string.PrivacyP2PHeader));
                } else {
                    headerCell.setText(LocaleController.getString("AddExceptions", C3290R.string.AddExceptions));
                }
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i) {
            if (i == PrivacyControlActivity.this.alwaysShareRow || i == PrivacyControlActivity.this.neverShareRow || i == PrivacyControlActivity.this.p2pRow) {
                return 0;
            }
            if (i == PrivacyControlActivity.this.rankDetailsRow || i == PrivacyControlActivity.this.shareDetailRow || i == PrivacyControlActivity.this.detailRow || i == PrivacyControlActivity.this.p2pDetailRow || i == PrivacyControlActivity.this.photoForRestDescriptionRow) {
                return 1;
            }
            if (i == PrivacyControlActivity.this.rankSectionRow || i == PrivacyControlActivity.this.sectionRow || i == PrivacyControlActivity.this.shareSectionRow || i == PrivacyControlActivity.this.p2pSectionRow || i == PrivacyControlActivity.this.phoneSectionRow) {
                return 2;
            }
            if (i == PrivacyControlActivity.this.rankEverybodyRow || i == PrivacyControlActivity.this.rankNobodyRow || i == PrivacyControlActivity.this.everybodyRow || i == PrivacyControlActivity.this.myContactsRow || i == PrivacyControlActivity.this.nobodyRow || i == PrivacyControlActivity.this.phoneEverybodyRow || i == PrivacyControlActivity.this.phoneContactsRow) {
                return 3;
            }
            if (i == PrivacyControlActivity.this.messageRow) {
                return 4;
            }
            if (i == PrivacyControlActivity.this.phoneDetailRow) {
                return 5;
            }
            if (i == PrivacyControlActivity.this.photoForRestRow) {
                return 6;
            }
            return i == PrivacyControlActivity.this.currentPhotoForRestRow ? 7 : 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: org.telegram.ui.PrivacyControlActivity$DiffCallback */
    /* loaded from: classes5.dex */
    public class DiffCallback extends DiffUtil.Callback {
        SparseIntArray newPositionToItem;
        SparseIntArray oldPositionToItem;
        int oldRowCount;

        private DiffCallback() {
            this.oldPositionToItem = new SparseIntArray();
            this.newPositionToItem = new SparseIntArray();
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getOldListSize() {
            return this.oldRowCount;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public int getNewListSize() {
            return PrivacyControlActivity.this.rowCount;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areItemsTheSame(int i, int i2) {
            int i3 = this.oldPositionToItem.get(i, -1);
            return i3 == this.newPositionToItem.get(i2, -1) && i3 >= 0;
        }

        @Override // androidx.recyclerview.widget.DiffUtil.Callback
        public boolean areContentsTheSame(int i, int i2) {
            return areItemsTheSame(i, i2);
        }

        public void fillPositions(SparseIntArray sparseIntArray) {
            sparseIntArray.clear();
            put(1, PrivacyControlActivity.this.messageRow, sparseIntArray);
            put(2, PrivacyControlActivity.this.sectionRow, sparseIntArray);
            put(3, PrivacyControlActivity.this.everybodyRow, sparseIntArray);
            put(4, PrivacyControlActivity.this.myContactsRow, sparseIntArray);
            put(5, PrivacyControlActivity.this.nobodyRow, sparseIntArray);
            put(6, PrivacyControlActivity.this.detailRow, sparseIntArray);
            put(7, PrivacyControlActivity.this.shareSectionRow, sparseIntArray);
            put(8, PrivacyControlActivity.this.alwaysShareRow, sparseIntArray);
            put(9, PrivacyControlActivity.this.neverShareRow, sparseIntArray);
            put(10, PrivacyControlActivity.this.shareDetailRow, sparseIntArray);
            put(11, PrivacyControlActivity.this.phoneSectionRow, sparseIntArray);
            put(12, PrivacyControlActivity.this.phoneEverybodyRow, sparseIntArray);
            put(13, PrivacyControlActivity.this.phoneContactsRow, sparseIntArray);
            put(14, PrivacyControlActivity.this.phoneDetailRow, sparseIntArray);
            put(15, PrivacyControlActivity.this.photoForRestRow, sparseIntArray);
            put(16, PrivacyControlActivity.this.currentPhotoForRestRow, sparseIntArray);
            put(17, PrivacyControlActivity.this.photoForRestDescriptionRow, sparseIntArray);
            put(18, PrivacyControlActivity.this.p2pSectionRow, sparseIntArray);
            put(19, PrivacyControlActivity.this.p2pRow, sparseIntArray);
            put(20, PrivacyControlActivity.this.p2pDetailRow, sparseIntArray);
        }

        private void put(int i, int i2, SparseIntArray sparseIntArray) {
            if (i2 >= 0) {
                sparseIntArray.put(i2, i);
            }
        }
    }

    @Override // org.telegram.p044ui.ActionBar.BaseFragment
    public ArrayList<ThemeDescription> getThemeDescriptions() {
        ArrayList<ThemeDescription> arrayList = new ArrayList<>();
        int i = Theme.key_windowBackgroundWhite;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextSettingsCell.class, HeaderCell.class, RadioCell.class}, null, null, null, i));
        arrayList.add(new ThemeDescription(this.fragmentView, ThemeDescription.FLAG_BACKGROUND, null, null, null, null, i));
        C3356ActionBar c3356ActionBar = this.actionBar;
        int i2 = ThemeDescription.FLAG_BACKGROUND;
        int i3 = Theme.key_actionBarDefault;
        arrayList.add(new ThemeDescription(c3356ActionBar, i2, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_LISTGLOWCOLOR, null, null, null, null, i3));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_ITEMSCOLOR, null, null, null, null, Theme.key_actionBarDefaultIcon));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_TITLECOLOR, null, null, null, null, Theme.key_actionBarDefaultTitle));
        arrayList.add(new ThemeDescription(this.actionBar, ThemeDescription.FLAG_AB_SELECTORCOLOR, null, null, null, null, Theme.key_actionBarDefaultSelector));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_SELECTOR, null, null, null, null, Theme.key_listSelector));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{View.class}, Theme.dividerPaint, null, null, Theme.key_divider));
        int i4 = Theme.key_windowBackgroundWhiteBlackText;
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextSettingsCell.class}, new String[]{"valueTextView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteValueText));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{TextInfoPrivacyCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteGrayText4));
        int i5 = Theme.key_windowBackgroundGrayShadow;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i5));
        int i6 = Theme.key_windowBackgroundGray;
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{TextInfoPrivacyCell.class}, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER, new Class[]{ShadowSectionCell.class}, null, null, null, i5));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_BACKGROUNDFILTER | ThemeDescription.FLAG_CELLBACKGROUNDCOLOR, new Class[]{ShadowSectionCell.class}, null, null, null, i6));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{HeaderCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_windowBackgroundWhiteBlueHeader));
        arrayList.add(new ThemeDescription(this.listView, 0, new Class[]{RadioCell.class}, new String[]{"textView"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, i4));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKBOX, new Class[]{RadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_radioBackground));
        arrayList.add(new ThemeDescription(this.listView, ThemeDescription.FLAG_CHECKBOXCHECK, new Class[]{RadioCell.class}, new String[]{"radioButton"}, (Paint[]) null, (Drawable[]) null, (ThemeDescription.ThemeDescriptionDelegate) null, Theme.key_radioBackgroundChecked));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, new Drawable[]{Theme.chat_msgInDrawable, Theme.chat_msgInMediaDrawable}, null, Theme.key_chat_inBubble));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, new Drawable[]{Theme.chat_msgInSelectedDrawable, Theme.chat_msgInMediaSelectedDrawable}, null, Theme.key_chat_inBubbleSelected));
        RecyclerListView recyclerListView = this.listView;
        Drawable[] shadowDrawables = Theme.chat_msgInDrawable.getShadowDrawables();
        int i7 = Theme.key_chat_inBubbleShadow;
        arrayList.add(new ThemeDescription(recyclerListView, 0, null, null, shadowDrawables, null, i7));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, Theme.chat_msgInMediaDrawable.getShadowDrawables(), null, i7));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, new Drawable[]{Theme.chat_msgOutDrawable, Theme.chat_msgOutMediaDrawable}, null, Theme.key_chat_outBubble));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, new Drawable[]{Theme.chat_msgOutDrawable, Theme.chat_msgOutMediaDrawable}, null, Theme.key_chat_outBubbleGradient1));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, new Drawable[]{Theme.chat_msgOutDrawable, Theme.chat_msgOutMediaDrawable}, null, Theme.key_chat_outBubbleGradient2));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, new Drawable[]{Theme.chat_msgOutDrawable, Theme.chat_msgOutMediaDrawable}, null, Theme.key_chat_outBubbleGradient3));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, new Drawable[]{Theme.chat_msgOutSelectedDrawable, Theme.chat_msgOutMediaSelectedDrawable}, null, Theme.key_chat_outBubbleSelected));
        RecyclerListView recyclerListView2 = this.listView;
        Drawable[] shadowDrawables2 = Theme.chat_msgOutDrawable.getShadowDrawables();
        int i8 = Theme.key_chat_outBubbleShadow;
        arrayList.add(new ThemeDescription(recyclerListView2, 0, null, null, shadowDrawables2, null, i8));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, Theme.chat_msgOutMediaDrawable.getShadowDrawables(), null, i8));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_messageTextIn));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_messageTextOut));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, new Drawable[]{Theme.chat_msgOutCheckDrawable}, null, Theme.key_chat_outSentCheck));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, new Drawable[]{Theme.chat_msgOutCheckSelectedDrawable}, null, Theme.key_chat_outSentCheckSelected));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, new Drawable[]{Theme.chat_msgOutCheckReadDrawable, Theme.chat_msgOutHalfCheckDrawable}, null, Theme.key_chat_outSentCheckRead));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, new Drawable[]{Theme.chat_msgOutCheckReadSelectedDrawable, Theme.chat_msgOutHalfCheckSelectedDrawable}, null, Theme.key_chat_outSentCheckReadSelected));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, new Drawable[]{Theme.chat_msgMediaCheckDrawable, Theme.chat_msgMediaHalfCheckDrawable}, null, Theme.key_chat_mediaSentCheck));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_inReplyLine));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_outReplyLine));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_inReplyNameText));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_outReplyNameText));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_inReplyMessageText));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_outReplyMessageText));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_inReplyMediaMessageSelectedText));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_outReplyMediaMessageSelectedText));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_inTimeText));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_outTimeText));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_inTimeSelectedText));
        arrayList.add(new ThemeDescription(this.listView, 0, null, null, null, null, Theme.key_chat_outTimeSelectedText));
        return arrayList;
    }
}
