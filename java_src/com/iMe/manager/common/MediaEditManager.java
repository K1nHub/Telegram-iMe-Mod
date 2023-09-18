package com.iMe.manager.common;

import android.content.DialogInterface;
import com.iMe.utils.extentions.common.ContextExtKt;
import com.iMe.utils.extentions.common.ThrowableExtKt;
import com.otaliastudios.gif.GIFCompressor;
import com.otaliastudios.gif.GIFListener;
import com.otaliastudios.gif.strategy.DefaultStrategy;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.Future;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt___ArraysJvmKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3473R;
import org.telegram.messenger.FileLoader;
import org.telegram.messenger.ImageLoader;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.MessageObject;
import org.telegram.messenger.MessagesController;
import org.telegram.messenger.MessagesStorage;
import org.telegram.messenger.NotificationCenter;
import org.telegram.messenger.UserConfig;
import org.telegram.p043ui.ActionBar.AlertDialog;
import org.telegram.p043ui.ActionBar.BaseFragment;
import org.telegram.p043ui.Components.ChatActivityEnterView;
import org.telegram.p043ui.Components.ImageUpdater;
import org.telegram.p043ui.Components.RLottieDrawable;
import org.telegram.p043ui.PhotoViewer;
import org.telegram.tgnet.RequestDelegate;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Document;
import org.telegram.tgnet.TLRPC$InputFile;
import org.telegram.tgnet.TLRPC$Photo;
import org.telegram.tgnet.TLRPC$PhotoSize;
import org.telegram.tgnet.TLRPC$TL_error;
import org.telegram.tgnet.TLRPC$TL_photos_photo;
import org.telegram.tgnet.TLRPC$TL_photos_uploadProfilePhoto;
import org.telegram.tgnet.TLRPC$TL_userProfilePhoto;
import org.telegram.tgnet.TLRPC$User;
import org.telegram.tgnet.TLRPC$VideoSize;
/* compiled from: MediaEditManager.kt */
/* loaded from: classes4.dex */
public final class MediaEditManager implements NotificationCenter.NotificationCenterDelegate {
    private final int[] conversionObservers;
    private final int currentAccount;
    private final ChatActivityEnterView.ChatActivityEnterViewDelegate delegate;
    private final int fileLoadingObserver;
    private final Lazy imageLoader$delegate;
    private final Lazy imageUpdater$delegate;
    private final Lazy loadingAlertDialog$delegate;
    private String loadingFileUrl;
    private final NotificationCenter notificationCenter;
    private final BaseFragment parentFragment;

    static {
        new Companion(null);
    }

    public MediaEditManager(BaseFragment parentFragment, int i, ChatActivityEnterView.ChatActivityEnterViewDelegate chatActivityEnterViewDelegate) {
        Lazy lazy;
        Lazy lazy2;
        Lazy lazy3;
        Intrinsics.checkNotNullParameter(parentFragment, "parentFragment");
        this.parentFragment = parentFragment;
        this.currentAccount = i;
        this.delegate = chatActivityEnterViewDelegate;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<AlertDialog>() { // from class: com.iMe.manager.common.MediaEditManager$loadingAlertDialog$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AlertDialog invoke() {
                AlertDialog initLoadingDialog;
                initLoadingDialog = MediaEditManager.this.initLoadingDialog();
                return initLoadingDialog;
            }
        });
        this.loadingAlertDialog$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<ImageLoader>() { // from class: com.iMe.manager.common.MediaEditManager$imageLoader$2
            @Override // kotlin.jvm.functions.Function0
            public final ImageLoader invoke() {
                return ImageLoader.getInstance();
            }
        });
        this.imageLoader$delegate = lazy2;
        lazy3 = LazyKt__LazyJVMKt.lazy(new Function0<ImageUpdater>() { // from class: com.iMe.manager.common.MediaEditManager$imageUpdater$2
            @Override // kotlin.jvm.functions.Function0
            public final ImageUpdater invoke() {
                return new ImageUpdater(true, 0, false);
            }
        });
        this.imageUpdater$delegate = lazy3;
        this.notificationCenter = parentFragment.getNotificationCenter();
        this.conversionObservers = new int[]{NotificationCenter.gifStickerAvatarPrepared, NotificationCenter.gifStickerAvatarPreparingFailed};
        this.fileLoadingObserver = NotificationCenter.httpFileDidLoad;
    }

    public /* synthetic */ MediaEditManager(BaseFragment baseFragment, int i, ChatActivityEnterView.ChatActivityEnterViewDelegate chatActivityEnterViewDelegate, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(baseFragment, i, (i2 & 4) != 0 ? null : chatActivityEnterViewDelegate);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AlertDialog getLoadingAlertDialog() {
        return (AlertDialog) this.loadingAlertDialog$delegate.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageLoader getImageLoader() {
        Object value = this.imageLoader$delegate.getValue();
        Intrinsics.checkNotNullExpressionValue(value, "<get-imageLoader>(...)");
        return (ImageLoader) value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ImageUpdater getImageUpdater() {
        return (ImageUpdater) this.imageUpdater$delegate.getValue();
    }

    public final void editAnimatedSticker(TLRPC$Document sticker, RLottieDrawable rLottieDrawable, boolean z) {
        Intrinsics.checkNotNullParameter(sticker, "sticker");
        if (rLottieDrawable == null) {
            return;
        }
        showLoading$default(this, C3473R.string.custom_avatar_processing, null, 2, null);
        if (z) {
            prepareAvatarEditing();
        }
        this.notificationCenter.addObservers(this, this.conversionObservers);
        MediaController.getInstance().exportAnimatedSticker(this.currentAccount, sticker, rLottieDrawable.getDuration(), z ? "temp_app_avatar.mp4" : "temp_app_sticker.mp4");
    }

    public final void editMedia(TLRPC$Document document, boolean z) {
        Intrinsics.checkNotNullParameter(document, "document");
        boolean z2 = true;
        String path = FileLoader.getInstance(this.currentAccount).getPathToAttach(document, !MessageObject.isGifDocument(document)).getAbsolutePath();
        if (!MessageObject.isVideoSticker(document) && !MessageObject.isGifDocument(document)) {
            z2 = false;
        }
        if (z) {
            Intrinsics.checkNotNullExpressionValue(path, "path");
            openExistingFileForAvatarEdit(path, z2);
            return;
        }
        Intrinsics.checkNotNullExpressionValue(path, "path");
        openStickerEditor(path, z2, z2);
    }

    public final void setKiklikoAvatar(String path) {
        Intrinsics.checkNotNullParameter(path, "path");
        openExistingFileForAvatarEdit(path, true);
    }

    public final void setNftAvatar(final String nftTokenUrl) {
        Intrinsics.checkNotNullParameter(nftTokenUrl, "nftTokenUrl");
        String ext = ImageLoader.getHttpUrlExtension(nftTokenUrl, "");
        Intrinsics.checkNotNullExpressionValue(ext, "ext");
        if (ext.length() > 0) {
            prepareAvatarEditing();
            this.notificationCenter.addObserver(this, this.fileLoadingObserver);
            this.loadingFileUrl = nftTokenUrl;
            getImageLoader().loadHttpFile(nftTokenUrl, ext, this.currentAccount);
            showLoading(C3473R.string.custom_avatar_downloading, new Function0<Unit>() { // from class: com.iMe.manager.common.MediaEditManager$setNftAvatar$1
                /* JADX INFO: Access modifiers changed from: package-private */
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }

                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    ImageLoader imageLoader;
                    imageLoader = MediaEditManager.this.getImageLoader();
                    imageLoader.cancelLoadHttpFile(nftTokenUrl);
                    MediaEditManager.this.loadingFileUrl = null;
                }
            });
            return;
        }
        onCommonError();
    }

    public final void finishLoading() {
        int[] plus;
        NotificationCenter notificationCenter = this.notificationCenter;
        plus = ArraysKt___ArraysJvmKt.plus(this.conversionObservers, this.fileLoadingObserver);
        notificationCenter.removeObservers(this, plus);
        AlertDialog loadingAlertDialog = getLoadingAlertDialog();
        if (loadingAlertDialog.isShowing()) {
            loadingAlertDialog.dismiss();
        }
    }

    @Override // org.telegram.messenger.NotificationCenter.NotificationCenterDelegate
    public void didReceivedNotification(int i, int i2, Object... args) {
        boolean endsWith$default;
        Intrinsics.checkNotNullParameter(args, "args");
        if (i == NotificationCenter.gifStickerAvatarPrepared) {
            Object obj = args[0];
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.String");
            String str = (String) obj;
            Object obj2 = args[1];
            Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Boolean");
            boolean booleanValue = ((Boolean) obj2).booleanValue();
            finishLoading();
            endsWith$default = StringsKt__StringsJVMKt.endsWith$default(str, "temp_app_avatar.mp4", false, 2, null);
            if (endsWith$default) {
                getImageUpdater().openPhotoForEdit(str, (String) null, 0, booleanValue);
            } else {
                openStickerEditor(str, booleanValue, false);
            }
            AndroidUtilities.addMediaToGallery(str);
        } else if (i == NotificationCenter.httpFileDidLoad) {
            Object obj3 = args[0];
            Intrinsics.checkNotNull(obj3, "null cannot be cast to non-null type kotlin.String");
            if (Intrinsics.areEqual((String) obj3, this.loadingFileUrl)) {
                Object obj4 = args[1];
                Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.String");
                finishLoading();
                onNftLoaded((String) obj4);
            }
        } else if (i == NotificationCenter.gifStickerAvatarPreparingFailed) {
            finishLoading();
            onCommonError();
        } else if (i == NotificationCenter.httpFileDidFailedLoad) {
            Object obj5 = args[0];
            Intrinsics.checkNotNull(obj5, "null cannot be cast to non-null type kotlin.String");
            if (Intrinsics.areEqual((String) obj5, this.loadingFileUrl)) {
                this.loadingFileUrl = null;
                finishLoading();
                onCommonError();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final AlertDialog initLoadingDialog() {
        return new AlertDialog(this.parentFragment.getParentActivity(), 3);
    }

    private final void openExistingFileForAvatarEdit(String str, boolean z) {
        prepareAvatarEditing();
        getImageUpdater().openPhotoForEdit(str, (String) null, 0, z);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002b, code lost:
        if (r0.equals("jpeg") == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
        if (r0.equals("png") == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x003d, code lost:
        if (r0.equals("mp4") == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0040, code lost:
        getImageUpdater().openPhotoForEdit(r5, (java.lang.String) null, 0, true);
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004f, code lost:
        if (r0.equals("jpg") == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
        getImageUpdater().openPhotoForEdit(r5, (java.lang.String) null, 0, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0019, code lost:
        if (r0.equals("webp") == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0022, code lost:
        if (r0.equals("webm") != false) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void onNftLoaded(java.lang.String r5) {
        /*
            r4 = this;
            java.io.File r0 = new java.io.File
            r0.<init>(r5)
            java.lang.String r0 = kotlin.p034io.FilesKt.getExtension(r0)
            int r1 = r0.hashCode()
            r2 = 0
            r3 = 0
            switch(r1) {
                case 102340: goto L5a;
                case 105441: goto L49;
                case 108273: goto L37;
                case 111145: goto L2e;
                case 3268712: goto L25;
                case 3645337: goto L1c;
                case 3645340: goto L13;
                default: goto L12;
            }
        L12:
            goto L67
        L13:
            java.lang.String r1 = "webp"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L52
            goto L67
        L1c:
            java.lang.String r1 = "webm"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L67
            goto L40
        L25:
            java.lang.String r1 = "jpeg"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L52
            goto L67
        L2e:
            java.lang.String r1 = "png"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L52
            goto L67
        L37:
            java.lang.String r1 = "mp4"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L40
            goto L67
        L40:
            org.telegram.ui.Components.ImageUpdater r0 = r4.getImageUpdater()
            r1 = 1
            r0.openPhotoForEdit(r5, r2, r3, r1)
            goto L77
        L49:
            java.lang.String r1 = "jpg"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L52
            goto L67
        L52:
            org.telegram.ui.Components.ImageUpdater r0 = r4.getImageUpdater()
            r0.openPhotoForEdit(r5, r2, r3, r3)
            goto L77
        L5a:
            java.lang.String r1 = "gif"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L63
            goto L67
        L63:
            r4.convertGifNft(r5)
            goto L77
        L67:
            int r5 = org.telegram.messenger.C3473R.string.ImportErrorFileFormatInvalid
            java.lang.String r0 = "ImportErrorFileFormatInvalid"
            java.lang.String r5 = org.telegram.messenger.LocaleController.getString(r0, r5)
            java.lang.String r0 = "getString(\n             …lid\n                    )"
            kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r5, r0)
            com.iMe.utils.extentions.common.ContextExtKt.toast(r5)
        L77:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.iMe.manager.common.MediaEditManager.onNftLoaded(java.lang.String):void");
    }

    private final void convertGifNft(String str) {
        final String str2 = FileLoader.checkDirectory(4).getAbsolutePath() + File.separator + "temp_app_avatar.mp4";
        final Future<Void> compress = GIFCompressor.into(str2).addDataSource(ApplicationLoader.applicationContext, str).setStrategy(DefaultStrategy.fraction(1.0f).build()).setListener(new GIFListener() { // from class: com.iMe.manager.common.MediaEditManager$convertGifNft$gifCompressing$1
            @Override // com.otaliastudios.gif.GIFListener
            public void onGIFCompressionCanceled() {
            }

            @Override // com.otaliastudios.gif.GIFListener
            public void onGIFCompressionProgress(double d) {
            }

            @Override // com.otaliastudios.gif.GIFListener
            public void onGIFCompressionCompleted() {
                AlertDialog loadingAlertDialog;
                ImageUpdater imageUpdater;
                loadingAlertDialog = MediaEditManager.this.getLoadingAlertDialog();
                loadingAlertDialog.dismiss();
                imageUpdater = MediaEditManager.this.getImageUpdater();
                imageUpdater.openPhotoForEdit(str2, (String) null, 0, true);
            }

            @Override // com.otaliastudios.gif.GIFListener
            public void onGIFCompressionFailed(Throwable exception) {
                Intrinsics.checkNotNullParameter(exception, "exception");
                ThrowableExtKt.showToast(exception);
            }
        }).compress();
        Intrinsics.checkNotNullExpressionValue(compress, "private fun convertGifNf…cel(true)\n        }\n    }");
        showLoading(C3473R.string.custom_avatar_processing, new Function0<Unit>() { // from class: com.iMe.manager.common.MediaEditManager$convertGifNft$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                compress.cancel(true);
            }
        });
    }

    private final void prepareAvatarEditing() {
        ImageUpdater imageUpdater = getImageUpdater();
        imageUpdater.parentFragment = this.parentFragment;
        imageUpdater.setDelegate(new ImageUpdater.ImageUpdaterDelegate() { // from class: com.iMe.manager.common.MediaEditManager$$ExternalSyntheticLambda4
            @Override // org.telegram.p043ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ boolean canFinishFragment() {
                return ImageUpdater.ImageUpdaterDelegate.CC.$default$canFinishFragment(this);
            }

            @Override // org.telegram.p043ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ void didStartUpload(boolean z) {
                ImageUpdater.ImageUpdaterDelegate.CC.$default$didStartUpload(this, z);
            }

            @Override // org.telegram.p043ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ void didUploadFailed() {
                ImageUpdater.ImageUpdaterDelegate.CC.$default$didUploadFailed(this);
            }

            @Override // org.telegram.p043ui.Components.ImageUpdater.ImageUpdaterDelegate
            public final void didUploadPhoto(TLRPC$InputFile tLRPC$InputFile, TLRPC$InputFile tLRPC$InputFile2, double d, String str, TLRPC$PhotoSize tLRPC$PhotoSize, TLRPC$PhotoSize tLRPC$PhotoSize2, boolean z, TLRPC$VideoSize tLRPC$VideoSize) {
                MediaEditManager.prepareAvatarEditing$lambda$3$lambda$2(MediaEditManager.this, tLRPC$InputFile, tLRPC$InputFile2, d, str, tLRPC$PhotoSize, tLRPC$PhotoSize2, z, tLRPC$VideoSize);
            }

            @Override // org.telegram.p043ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ String getInitialSearchString() {
                return ImageUpdater.ImageUpdaterDelegate.CC.$default$getInitialSearchString(this);
            }

            @Override // org.telegram.p043ui.Components.ImageUpdater.ImageUpdaterDelegate
            public /* synthetic */ void onUploadProgressChanged(float f) {
                ImageUpdater.ImageUpdaterDelegate.CC.$default$onUploadProgressChanged(this, f);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void prepareAvatarEditing$lambda$3$lambda$2(final MediaEditManager this$0, final TLRPC$InputFile tLRPC$InputFile, final TLRPC$InputFile tLRPC$InputFile2, final double d, final String str, final TLRPC$PhotoSize tLRPC$PhotoSize, final TLRPC$PhotoSize tLRPC$PhotoSize2, boolean z, TLRPC$VideoSize tLRPC$VideoSize) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.manager.common.MediaEditManager$$ExternalSyntheticLambda1
            @Override // java.lang.Runnable
            public final void run() {
                MediaEditManager.prepareAvatarEditing$lambda$3$lambda$2$lambda$1(MediaEditManager.this, tLRPC$InputFile, tLRPC$InputFile2, d, str, tLRPC$PhotoSize, tLRPC$PhotoSize2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void prepareAvatarEditing$lambda$3$lambda$2$lambda$1(MediaEditManager this$0, TLRPC$InputFile tLRPC$InputFile, TLRPC$InputFile tLRPC$InputFile2, double d, String str, TLRPC$PhotoSize tLRPC$PhotoSize, TLRPC$PhotoSize tLRPC$PhotoSize2) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.changeAvatar(tLRPC$InputFile, tLRPC$InputFile2, d, str, tLRPC$PhotoSize, tLRPC$PhotoSize2);
    }

    private final void changeAvatar(TLRPC$InputFile tLRPC$InputFile, TLRPC$InputFile tLRPC$InputFile2, double d, final String str, final TLRPC$PhotoSize tLRPC$PhotoSize, final TLRPC$PhotoSize tLRPC$PhotoSize2) {
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
        final int sendRequest = this.parentFragment.getConnectionsManager().sendRequest(tLRPC$TL_photos_uploadProfilePhoto, new RequestDelegate() { // from class: com.iMe.manager.common.MediaEditManager$$ExternalSyntheticLambda3
            @Override // org.telegram.tgnet.RequestDelegate
            public final void run(TLObject tLObject, TLRPC$TL_error tLRPC$TL_error) {
                MediaEditManager.changeAvatar$lambda$9(MediaEditManager.this, str, tLRPC$PhotoSize2, tLRPC$PhotoSize, tLObject, tLRPC$TL_error);
            }
        });
        showLoading(C3473R.string.custom_avatar_upload, new Function0<Unit>() { // from class: com.iMe.manager.common.MediaEditManager$changeAvatar$1
            /* JADX INFO: Access modifiers changed from: package-private */
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                BaseFragment baseFragment;
                baseFragment = MediaEditManager.this.parentFragment;
                baseFragment.getConnectionsManager().cancelRequest(sendRequest, true);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void changeAvatar$lambda$9(final MediaEditManager this$0, final String str, final TLRPC$PhotoSize tLRPC$PhotoSize, final TLRPC$PhotoSize tLRPC$PhotoSize2, final TLObject tLObject, final TLRPC$TL_error tLRPC$TL_error) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AndroidUtilities.runOnUIThread(new Runnable() { // from class: com.iMe.manager.common.MediaEditManager$$ExternalSyntheticLambda2
            @Override // java.lang.Runnable
            public final void run() {
                MediaEditManager.changeAvatar$lambda$9$lambda$8(MediaEditManager.this, tLRPC$TL_error, tLObject, str, tLRPC$PhotoSize, tLRPC$PhotoSize2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void changeAvatar$lambda$9$lambda$8(MediaEditManager this$0, TLRPC$TL_error tLRPC$TL_error, TLObject tLObject, String str, TLRPC$PhotoSize tLRPC$PhotoSize, TLRPC$PhotoSize tLRPC$PhotoSize2) {
        ArrayList arrayListOf;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        UserConfig userConfig = UserConfig.getInstance(this$0.currentAccount);
        if (tLRPC$TL_error == null) {
            TLRPC$User user = this$0.parentFragment.getMessagesController().getUser(Long.valueOf(userConfig.getClientUserId()));
            if (user == null) {
                user = userConfig.getCurrentUser();
                if (user == null) {
                    return;
                }
                this$0.parentFragment.getMessagesController().putUser(user, false);
            } else {
                userConfig.setCurrentUser(user);
            }
            Intrinsics.checkNotNull(tLObject, "null cannot be cast to non-null type org.telegram.tgnet.TLRPC.TL_photos_photo");
            TLRPC$TL_userProfilePhoto tLRPC$TL_userProfilePhoto = new TLRPC$TL_userProfilePhoto();
            TLRPC$Photo tLRPC$Photo = ((TLRPC$TL_photos_photo) tLObject).photo;
            tLRPC$TL_userProfilePhoto.photo_id = tLRPC$Photo.f1552id;
            tLRPC$TL_userProfilePhoto.photo_small = tLRPC$PhotoSize != null ? tLRPC$PhotoSize.location : null;
            tLRPC$TL_userProfilePhoto.photo_big = tLRPC$PhotoSize2 != null ? tLRPC$PhotoSize2.location : null;
            user.photo = tLRPC$TL_userProfilePhoto;
            ArrayList<TLRPC$VideoSize> arrayList = tLRPC$Photo.video_sizes;
            Intrinsics.checkNotNullExpressionValue(arrayList, "photosPhoto.photo.video_sizes");
            TLRPC$VideoSize tLRPC$VideoSize = (TLRPC$VideoSize) CollectionsKt.firstOrNull(arrayList);
            if (tLRPC$VideoSize != null && str != null) {
                new File(str).renameTo(FileLoader.getInstance(this$0.currentAccount).getPathToAttach(tLRPC$VideoSize, "mp4", true));
            }
            MessagesStorage messagesStorage = this$0.parentFragment.getMessagesStorage();
            messagesStorage.clearUserPhotos(user.f1685id);
            arrayListOf = CollectionsKt__CollectionsKt.arrayListOf(user);
            messagesStorage.putUsersAndChats(arrayListOf, null, false, true);
            String internalString = LocaleController.getInternalString(C3473R.string.custom_avatar_success);
            Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.string.custom_avatar_success)");
            ContextExtKt.toast(internalString);
        }
        this$0.getLoadingAlertDialog().dismiss();
        NotificationCenter notificationCenter = this$0.notificationCenter;
        notificationCenter.lambda$postNotificationNameOnUIThread$1(NotificationCenter.updateInterfaces, Integer.valueOf(MessagesController.UPDATE_MASK_ALL));
        notificationCenter.lambda$postNotificationNameOnUIThread$1(NotificationCenter.mainUserInfoChanged, new Object[0]);
        userConfig.saveConfig(true);
    }

    private final void openStickerEditor(String str, boolean z, boolean z2) {
        MediaController.PhotoEntry photoEntry = new MediaController.PhotoEntry(0, 0, 0L, str, 0, z, 0, 0, 0L);
        PhotoViewer photoViewer = PhotoViewer.getInstance();
        if (this.parentFragment.getParentActivity() == null) {
            return;
        }
        photoViewer.setParentActivity(this.parentFragment.getParentActivity());
        photoViewer.openStickerEditor(photoEntry, z2, new MediaEditManager$openStickerEditor$1$1(photoEntry, this, str, z));
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void showLoading$default(MediaEditManager mediaEditManager, int i, Function0 function0, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            function0 = new Function0<Unit>() { // from class: com.iMe.manager.common.MediaEditManager$showLoading$1
                /* renamed from: invoke  reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }

                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ Unit invoke() {
                    invoke2();
                    return Unit.INSTANCE;
                }
            };
        }
        mediaEditManager.showLoading(i, function0);
    }

    private final void showLoading(int i, final Function0<Unit> function0) {
        AlertDialog loadingAlertDialog = getLoadingAlertDialog();
        loadingAlertDialog.setMessage(LocaleController.getInternalString(i));
        loadingAlertDialog.setOnCancelListener(new DialogInterface.OnCancelListener() { // from class: com.iMe.manager.common.MediaEditManager$$ExternalSyntheticLambda0
            @Override // android.content.DialogInterface.OnCancelListener
            public final void onCancel(DialogInterface dialogInterface) {
                MediaEditManager.showLoading$lambda$12$lambda$11(Function0.this, dialogInterface);
            }
        });
        loadingAlertDialog.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showLoading$lambda$12$lambda$11(Function0 onCancelAction, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(onCancelAction, "$onCancelAction");
        onCancelAction.invoke();
    }

    private final void onCommonError() {
        String string = LocaleController.getString("ErrorOccurred", C3473R.string.ErrorOccurred);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"ErrorOccurred\", R.string.ErrorOccurred)");
        ContextExtKt.toast(string);
    }

    /* compiled from: MediaEditManager.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
