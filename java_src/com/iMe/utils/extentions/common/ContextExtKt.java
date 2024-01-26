package com.iMe.utils.extentions.common;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.provider.Settings;
import android.widget.Toast;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.AndroidUtilities;
import org.telegram.messenger.ApplicationLoader;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
import timber.log.Timber;
/* compiled from: ContextExt.kt */
/* loaded from: classes4.dex */
public final class ContextExtKt {
    public static final void copyToClipboard(String text) {
        Intrinsics.checkNotNullParameter(text, "text");
        copyToClipboard$default(text, null, 2, null);
    }

    public static final String getDeviceId(Context context) {
        Intrinsics.checkNotNullParameter(context, "<this>");
        String string = Settings.Secure.getString(context.getContentResolver(), "android_id");
        Intrinsics.checkNotNullExpressionValue(string, "getString(this.contentRe…ttings.Secure.ANDROID_ID)");
        return string;
    }

    public static final void toast(CharSequence text) {
        Intrinsics.checkNotNullParameter(text, "text");
        try {
            Toast.makeText(ApplicationLoader.applicationContext, text, 0).show();
        } catch (Exception e) {
            Timber.m6e(e);
        }
    }

    public static final void longToast(CharSequence text) {
        Intrinsics.checkNotNullParameter(text, "text");
        try {
            Toast.makeText(ApplicationLoader.applicationContext, text, 1).show();
        } catch (Exception e) {
            Timber.m6e(e);
        }
    }

    public static final void share(Activity activity, String text) {
        Intrinsics.checkNotNullParameter(activity, "<this>");
        Intrinsics.checkNotNullParameter(text, "text");
        try {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.TEXT", text);
            activity.startActivityForResult(Intent.createChooser(intent, LocaleController.getString("ShareTelegram", C3632R.string.ShareTelegram)), 500);
        } catch (Exception e) {
            Timber.m6e(e);
        }
    }

    public static /* synthetic */ void copyToClipboard$default(String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = LocaleController.getString("TextCopied", C3632R.string.TextCopied);
            Intrinsics.checkNotNullExpressionValue(str2, "getString(\n        \"Text…R.string.TextCopied\n    )");
        }
        copyToClipboard(str, str2);
    }

    public static final void copyToClipboard(String text, String toastMessage) {
        Intrinsics.checkNotNullParameter(text, "text");
        Intrinsics.checkNotNullParameter(toastMessage, "toastMessage");
        AndroidUtilities.addToClipboard(text);
        toast(toastMessage);
    }
}
