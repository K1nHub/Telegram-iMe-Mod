package com.iMe.p031ui.music;

import android.app.Activity;
import android.view.View;
import android.widget.TextView;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.C3242R;
import org.telegram.messenger.LocaleController;
import org.telegram.p044ui.ActionBar.Theme;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: NoPermissionMusicCell.kt */
/* renamed from: com.iMe.ui.music.NoPermissionMusicCell$requestButton$2 */
/* loaded from: classes3.dex */
public final class NoPermissionMusicCell$requestButton$2 extends Lambda implements Function0<TextView> {
    final /* synthetic */ Activity $context;
    final /* synthetic */ NoPermissionMusicCell this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NoPermissionMusicCell$requestButton$2(Activity activity, NoPermissionMusicCell noPermissionMusicCell) {
        super(0);
        this.$context = activity;
        this.this$0 = noPermissionMusicCell;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final TextView invoke() {
        String str;
        String str2;
        String str3;
        TextView textView = new TextView(this.$context);
        NoPermissionMusicCell noPermissionMusicCell = this.this$0;
        final Activity activity = this.$context;
        textView.setGravity(17);
        int m51dp = AndroidUtilities.m51dp(4.0f);
        str = noPermissionMusicCell.buttonDefaultColor;
        int color = Theme.getColor(str);
        str2 = noPermissionMusicCell.buttonPressedColor;
        textView.setBackground(Theme.createSimpleSelectorRoundRectDrawable(m51dp, color, Theme.getColor(str2)));
        textView.setText(LocaleController.getString("PeopleNearbyAllowAccess", C3242R.string.PeopleNearbyAllowAccess));
        textView.setTypeface(AndroidUtilities.getTypeface(AndroidUtilities.TYPEFACE_ROBOTO_MEDIUM));
        textView.setTextSize(1, 14.0f);
        str3 = noPermissionMusicCell.buttonTextColor;
        textView.setTextColor(Theme.getColor(str3));
        textView.setPadding(AndroidUtilities.m51dp(34.0f), 0, AndroidUtilities.m51dp(34.0f), 0);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.iMe.ui.music.NoPermissionMusicCell$requestButton$2$$ExternalSyntheticLambda0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NoPermissionMusicCell$requestButton$2.invoke$lambda$1$lambda$0(activity, view);
            }
        });
        return textView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void invoke$lambda$1$lambda$0(Activity context, View view) {
        Intrinsics.checkNotNullParameter(context, "$context");
        context.requestPermissions(new String[]{"android.permission.READ_EXTERNAL_STORAGE"}, 4);
    }
}
