package com.iMe.p031ui.music;

import android.app.Activity;
import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3417R;
import org.telegram.messenger.LocaleController;
import org.telegram.p043ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NoPermissionMusicCell.kt */
/* renamed from: com.iMe.ui.music.NoPermissionMusicCell$noPermissionTitle$2 */
/* loaded from: classes3.dex */
public final class NoPermissionMusicCell$noPermissionTitle$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ Activity $context;
    final /* synthetic */ NoPermissionMusicCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoPermissionMusicCell$noPermissionTitle$2(Activity activity, NoPermissionMusicCell noPermissionMusicCell) {
        super(0);
        this.$context = activity;
        this.this$0 = noPermissionMusicCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        int i;
        TextView textView = new TextView(this.$context);
        NoPermissionMusicCell noPermissionMusicCell = this.this$0;
        textView.setGravity(17);
        textView.setText(LocaleController.getInternalString(C3417R.string.music_device_no_permission_title));
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        i = noPermissionMusicCell.titleColor;
        textView.setTextColor(Theme.getColor(i));
        textView.setTextSize(1, 20.0f);
        return textView;
    }
}
