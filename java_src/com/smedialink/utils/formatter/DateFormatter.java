package com.smedialink.utils.formatter;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.LocaleController;
import p034j$.util.DesugarTimeZone;
/* compiled from: DateFormatter.kt */
/* loaded from: classes3.dex */
public final class DateFormatter {
    public static final DateFormatter INSTANCE = new DateFormatter();
    private static final HashMap<String, HashMap<DateType, SimpleDateFormat>> availableLocalesFormatter = new HashMap<>();

    private DateFormatter() {
    }

    public static /* synthetic */ String format$default(DateType dateType, Date date, String str, int i, Object obj) {
        if ((i & 4) != 0) {
            str = INSTANCE.getLanguageCode();
        }
        return format(dateType, date, str);
    }

    public static final String format(DateType type, Date value, String language) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(language, "language");
        String format = INSTANCE.getCurrentLocaleFormatter(type, language).format(value);
        Intrinsics.checkNotNullExpressionValue(format, "getCurrentLocaleFormatte…, language).format(value)");
        return format;
    }

    public static /* synthetic */ Date parse$default(DateType dateType, String str, String str2, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = INSTANCE.getLanguageCode();
        }
        return parse(dateType, str, str2);
    }

    public static final Date parse(DateType type, String value, String language) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(language, "language");
        Date parse = INSTANCE.getCurrentLocaleFormatter(type, language).parse(value);
        Intrinsics.checkNotNullExpressionValue(parse, "getCurrentLocaleFormatte…e, language).parse(value)");
        return parse;
    }

    private final String getLanguageCode() {
        String defaultLangIfIsRtl = LocaleController.getInstance().defaultLangIfIsRtl();
        Intrinsics.checkNotNullExpressionValue(defaultLangIfIsRtl, "getInstance().defaultLangIfIsRtl()");
        return defaultLangIfIsRtl;
    }

    private final SimpleDateFormat getCurrentLocaleFormatter(DateType dateType, String str) {
        HashMap<String, HashMap<DateType, SimpleDateFormat>> hashMap = availableLocalesFormatter;
        HashMap<DateType, SimpleDateFormat> hashMap2 = hashMap.get(str);
        if (hashMap2 == null) {
            hashMap2 = MapsKt__MapsKt.hashMapOf(TuplesKt.m99to(dateType, INSTANCE.createFormatFor(dateType, str)));
            hashMap.put(str, hashMap2);
        }
        HashMap<DateType, SimpleDateFormat> hashMap3 = hashMap2;
        SimpleDateFormat simpleDateFormat = hashMap3.get(dateType);
        if (simpleDateFormat == null) {
            simpleDateFormat = INSTANCE.createFormatFor(dateType, str);
            hashMap3.put(dateType, simpleDateFormat);
        }
        return simpleDateFormat;
    }

    private final SimpleDateFormat createFormatFor(DateType dateType, String str) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(dateType.getFormat(), new Locale(str));
        simpleDateFormat.setTimeZone(dateType.getTimeZone());
        return simpleDateFormat;
    }

    /* compiled from: DateFormatter.kt */
    /* loaded from: classes3.dex */
    public static final class DateType {
        private static final /* synthetic */ DateType[] $VALUES;
        public static final DateType DATE_AND_TIME;
        public static final DateType ISO;
        public static final DateType ONLY_DATE;
        public static final DateType ONLY_TIME;
        private final String format;
        private final TimeZone timeZone;

        private static final /* synthetic */ DateType[] $values() {
            return new DateType[]{ISO, ONLY_TIME, ONLY_DATE, DATE_AND_TIME};
        }

        public static DateType valueOf(String str) {
            return (DateType) Enum.valueOf(DateType.class, str);
        }

        public static DateType[] values() {
            return (DateType[]) $VALUES.clone();
        }

        private DateType(String str, int i, String str2, TimeZone timeZone) {
            super(str, i);
            this.format = str2;
            this.timeZone = timeZone;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        /* synthetic */ DateType(java.lang.String r1, int r2, java.lang.String r3, java.util.TimeZone r4, int r5, kotlin.jvm.internal.DefaultConstructorMarker r6) {
            /*
                r0 = this;
                r5 = r5 & 2
                if (r5 == 0) goto Ld
                java.util.TimeZone r4 = java.util.TimeZone.getDefault()
                java.lang.String r5 = "getDefault()"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r4, r5)
            Ld:
                r0.<init>(r1, r2, r3, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.smedialink.utils.formatter.DateFormatter.DateType.<init>(java.lang.String, int, java.lang.String, java.util.TimeZone, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        public final String getFormat() {
            return this.format;
        }

        public final TimeZone getTimeZone() {
            return this.timeZone;
        }

        static {
            TimeZone timeZone = DesugarTimeZone.getTimeZone("UTC");
            Intrinsics.checkNotNullExpressionValue(timeZone, "getTimeZone(\"UTC\")");
            ISO = new DateType("ISO", 0, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", timeZone);
            ONLY_TIME = new DateType("ONLY_TIME", 1, "HH:mm", null, 2, null);
            ONLY_DATE = new DateType("ONLY_DATE", 2, "dd MMM yyyy", null, 2, null);
            DATE_AND_TIME = new DateType("DATE_AND_TIME", 3, "dd MMM yyyy HH:mm", null, 2, null);
            $VALUES = $values();
        }
    }
}
