package com.iMe.manager.common;

import android.app.Activity;
import com.iMe.fork.utils.Callbacks$Callback1;
import com.iMe.model.dialog.ListDialogModel;
import com.iMe.utils.dialogs.DialogUtils;
import java.util.List;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3316R;
import org.telegram.messenger.LocaleController;
import org.telegram.messenger.MediaController;
import org.telegram.messenger.SendMessagesHelper;
import org.telegram.messenger.VideoEditedInfo;
import org.telegram.p048ui.ActionBar.BaseFragment;
import org.telegram.p048ui.Components.ChatActivityEnterView;
import org.telegram.p048ui.PhotoViewer;
/* compiled from: MediaEditManager.kt */
/* loaded from: classes3.dex */
public final class MediaEditManager$openStickerEditor$1$1 extends PhotoViewer.EmptyPhotoViewerProvider {
    final /* synthetic */ boolean $isVideo;
    final /* synthetic */ String $path;
    final /* synthetic */ MediaController.PhotoEntry $photoEntry;
    final /* synthetic */ MediaEditManager this$0;

    @Override // org.telegram.p048ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p048ui.PhotoViewer.PhotoViewerProvider
    public boolean allowCaption() {
        return false;
    }

    @Override // org.telegram.p048ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p048ui.PhotoViewer.PhotoViewerProvider
    public boolean canScrollAway() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MediaEditManager$openStickerEditor$1$1(MediaController.PhotoEntry photoEntry, MediaEditManager mediaEditManager, String str, boolean z) {
        this.$photoEntry = photoEntry;
        this.this$0 = mediaEditManager;
        this.$path = str;
        this.$isVideo = z;
    }

    @Override // org.telegram.p048ui.PhotoViewer.EmptyPhotoViewerProvider, org.telegram.p048ui.PhotoViewer.PhotoViewerProvider
    public void sendButtonPressed(int i, VideoEditedInfo videoEditedInfo, final boolean z, final int i2, boolean z2, final String str, boolean z3) {
        ChatActivityEnterView.ChatActivityEnterViewDelegate chatActivityEnterViewDelegate;
        BaseFragment baseFragment;
        BaseFragment baseFragment2;
        List listOf;
        final SendMessagesHelper.SendingMediaInfo sendingMediaInfo = new SendMessagesHelper.SendingMediaInfo();
        MediaController.PhotoEntry photoEntry = this.$photoEntry;
        String str2 = this.$path;
        boolean z4 = this.$isVideo;
        String str3 = photoEntry.imagePath;
        if (str3 != null) {
            str2 = str3;
        }
        sendingMediaInfo.path = str2;
        sendingMediaInfo.thumbPath = photoEntry.thumbPath;
        sendingMediaInfo.videoEditedInfo = photoEntry.editedInfo;
        sendingMediaInfo.isVideo = z4;
        sendingMediaInfo.entities = photoEntry.entities;
        sendingMediaInfo.masks = photoEntry.stickers;
        sendingMediaInfo.ttl = photoEntry.ttl;
        if (z4) {
            baseFragment = this.this$0.parentFragment;
            baseFragment2 = this.this$0.parentFragment;
            Activity parentActivity = baseFragment2.getParentActivity();
            Intrinsics.checkNotNullExpressionValue(parentActivity, "parentFragment.parentActivity");
            String internalString = LocaleController.getInternalString(C3316R.string.sticker_edit_send_as);
            listOf = CollectionsKt__CollectionsKt.listOf((Object[]) new String[]{LocaleController.getString("AttachGif", C3316R.string.AttachGif), LocaleController.getString("AttachVideo", C3316R.string.AttachVideo)});
            ListDialogModel listDialogModel = new ListDialogModel(internalString, null, null, listOf, null, null);
            final MediaEditManager mediaEditManager = this.this$0;
            baseFragment.showDialog(DialogUtils.createDialogWithSelectableList(parentActivity, listDialogModel, new Callbacks$Callback1() { // from class: com.iMe.manager.common.MediaEditManager$openStickerEditor$1$1$$ExternalSyntheticLambda0
                @Override // com.iMe.fork.utils.Callbacks$Callback1
                public final void invoke(Object obj) {
                    MediaEditManager$openStickerEditor$1$1.sendButtonPressed$lambda$1(SendMessagesHelper.SendingMediaInfo.this, mediaEditManager, z, i2, str, ((Integer) obj).intValue());
                }
            }, null, null));
            return;
        }
        chatActivityEnterViewDelegate = this.this$0.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.sendEditedSticker(sendingMediaInfo, z, i2, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void sendButtonPressed$lambda$1(SendMessagesHelper.SendingMediaInfo info, MediaEditManager this$0, boolean z, int i, String str, int i2) {
        ChatActivityEnterView.ChatActivityEnterViewDelegate chatActivityEnterViewDelegate;
        Intrinsics.checkNotNullParameter(info, "$info");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        info.videoEditedInfo.muted = i2 == 0;
        chatActivityEnterViewDelegate = this$0.delegate;
        if (chatActivityEnterViewDelegate != null) {
            chatActivityEnterViewDelegate.sendEditedSticker(info, z, i, str);
        }
    }
}
