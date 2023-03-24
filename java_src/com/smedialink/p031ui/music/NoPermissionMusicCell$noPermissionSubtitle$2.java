package com.smedialink.p031ui.music;

import android.app.Activity;
import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.C3301R;
import org.telegram.messenger.LocaleController;
import org.telegram.p048ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NoPermissionMusicCell.kt */
/* renamed from: com.smedialink.ui.music.NoPermissionMusicCell$noPermissionSubtitle$2 */
/* loaded from: classes3.dex */
public final class NoPermissionMusicCell$noPermissionSubtitle$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ Activity $context;
    final /* synthetic */ NoPermissionMusicCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoPermissionMusicCell$noPermissionSubtitle$2(Activity activity, NoPermissionMusicCell noPermissionMusicCell) {
        super(0);
        this.$context = activity;
        this.this$0 = noPermissionMusicCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        String str;
        TextView textView = new TextView(this.$context);
        NoPermissionMusicCell noPermissionMusicCell = this.this$0;
        textView.setGravity(17);
        textView.setText(LocaleController.getInternalString(C3301R.string.music_device_no_permission_subtitle));
        str = noPermissionMusicCell.subtitleColor;
        textView.setTextColor(Theme.getColor(str));
        textView.setTextSize(1, 14.0f);
        return textView;
    }
}
