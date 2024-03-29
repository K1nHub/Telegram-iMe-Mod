package org.telegram.p043ui.Components;

import android.app.Activity;
import android.content.Context;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.p043ui.ActionBar.Theme;
import org.telegram.p043ui.Components.Bulletin;
import org.telegram.p043ui.Components.Premium.LimitReachedBottomSheet;
import org.telegram.p043ui.LaunchActivity;
import org.telegram.p043ui.PremiumPreviewFragment;
import org.telegram.tgnet.TLObject;
import org.telegram.tgnet.TLRPC$Document;
/* renamed from: org.telegram.ui.Components.StickerSetBulletinLayout */
/* loaded from: classes6.dex */
public class StickerSetBulletinLayout extends Bulletin.TwoLineLayout {
    public StickerSetBulletinLayout(Context context, TLObject tLObject, int i, TLRPC$Document tLRPC$Document, Theme.ResourcesProvider resourcesProvider) {
        this(context, tLObject, 1, i, tLRPC$Document, resourcesProvider);
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x036d  */
    /* JADX WARN: Removed duplicated region for block: B:137:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0075 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0254  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0268  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x02fd  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public StickerSetBulletinLayout(final android.content.Context r16, org.telegram.tgnet.TLObject r17, int r18, int r19, org.telegram.tgnet.TLRPC$Document r20, org.telegram.p043ui.ActionBar.Theme.ResourcesProvider r21) {
        /*
            Method dump skipped, instructions count: 1022
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.telegram.p043ui.Components.StickerSetBulletinLayout.<init>(android.content.Context, org.telegram.tgnet.TLObject, int, int, org.telegram.tgnet.TLRPC$Document, org.telegram.ui.ActionBar.Theme$ResourcesProvider):void");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$0(Context context) {
        Activity findActivity = AndroidUtilities.findActivity(context);
        if (findActivity instanceof LaunchActivity) {
            ((LaunchActivity) findActivity).lambda$runLinkRequest$94(new PremiumPreviewFragment(LimitReachedBottomSheet.limitTypeToServerString(10)));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$new$1(Context context) {
        Activity findActivity = AndroidUtilities.findActivity(context);
        if (findActivity instanceof LaunchActivity) {
            ((LaunchActivity) findActivity).lambda$runLinkRequest$94(new PremiumPreviewFragment(LimitReachedBottomSheet.limitTypeToServerString(9)));
        }
    }
}
