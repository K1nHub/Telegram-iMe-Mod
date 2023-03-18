package com.smedialink.common;

import android.net.Uri;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.text.SimpleDateFormat;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsKt;
import org.telegram.messenger.LocaleController;
/* compiled from: Constants.kt */
/* loaded from: classes3.dex */
public final class Constants {
    public static final Constants INSTANCE = new Constants();
    private static final SimpleDateFormat dateDotsFormat = new SimpleDateFormat("dd.MM.yyyy", Locale.getDefault());

    private Constants() {
    }

    public final SimpleDateFormat getDateDotsFormat() {
        return dateDotsFormat;
    }

    public static final String generateGoogleTranslateUrl(String url) {
        Intrinsics.checkNotNullParameter(url, "url");
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        builder.authority("translate.google.com");
        builder.appendPath("translate");
        builder.appendQueryParameter("sl", TtmlNode.TEXT_EMPHASIS_AUTO);
        builder.appendQueryParameter("tl", LocaleController.getInstance().getCurrentLocaleInfo().pluralLangCode);
        builder.appendQueryParameter("u", url);
        String uri = builder.build().toString();
        Intrinsics.checkNotNullExpressionValue(uri, "Builder().apply {\n      …\n    }.build().toString()");
        return uri;
    }

    /* compiled from: Constants.kt */
    /* loaded from: classes3.dex */
    public static final class Telegram {
        public static final Telegram INSTANCE = new Telegram();

        private Telegram() {
        }

        public final String getShareLinkFor(String username) {
            CharSequence trim;
            Intrinsics.checkNotNullParameter(username, "username");
            StringBuilder sb = new StringBuilder();
            sb.append("https://t.me/");
            trim = StringsKt__StringsKt.trim(username);
            sb.append(trim.toString());
            return sb.toString();
        }
    }
}
