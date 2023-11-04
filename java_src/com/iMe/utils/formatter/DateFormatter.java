package com.iMe.utils.formatter;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import kotlin.TuplesKt;
import kotlin.collections.MapsKt__MapsKt;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.LocaleController;
import p033j$.util.DesugarTimeZone;
/* compiled from: DateFormatter.kt */
/* loaded from: classes4.dex */
public final class DateFormatter {
    public static final DateFormatter INSTANCE = new DateFormatter();
    private static final HashMap<String, HashMap<DateType, SimpleDateFormat>> availableLocalesFormatter = new HashMap<>();

    private DateFormatter() {
    }

    public static /* synthetic */ String format$default(DateType dateType, Date date, String str, TimeZone timeZone, int i, Object obj) {
        if ((i & 4) != 0) {
            str = INSTANCE.getLanguageCode();
        }
        if ((i & 8) != 0) {
            timeZone = null;
        }
        return format(dateType, date, str, timeZone);
    }

    public static final String format(DateType type, Date value, String language, TimeZone timeZone) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(language, "language");
        String format = INSTANCE.getCurrentLocaleFormatter(type, language, timeZone).format(value);
        Intrinsics.checkNotNullExpressionValue(format, "getCurrentLocaleFormatte…etTimeZone).format(value)");
        return format;
    }

    public static /* synthetic */ Date parse$default(DateType dateType, String str, String str2, TimeZone timeZone, int i, Object obj) {
        if ((i & 4) != 0) {
            str2 = INSTANCE.getLanguageCode();
        }
        if ((i & 8) != 0) {
            timeZone = null;
        }
        return parse(dateType, str, str2, timeZone);
    }

    public static final Date parse(DateType type, String value, String language, TimeZone timeZone) {
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(value, "value");
        Intrinsics.checkNotNullParameter(language, "language");
        Date parse = INSTANCE.getCurrentLocaleFormatter(type, language, timeZone).parse(value);
        return parse == null ? new Date() : parse;
    }

    private final String getLanguageCode() {
        String defaultLangIfIsRtl = LocaleController.getInstance().defaultLangIfIsRtl();
        Intrinsics.checkNotNullExpressionValue(defaultLangIfIsRtl, "getInstance().defaultLangIfIsRtl()");
        return defaultLangIfIsRtl;
    }

    private final SimpleDateFormat getCurrentLocaleFormatter(DateType dateType, String str, TimeZone timeZone) {
        HashMap<String, HashMap<DateType, SimpleDateFormat>> hashMap = availableLocalesFormatter;
        HashMap<DateType, SimpleDateFormat> hashMap2 = hashMap.get(str);
        if (hashMap2 == null) {
            hashMap2 = MapsKt__MapsKt.hashMapOf(TuplesKt.m146to(dateType, INSTANCE.createFormatFor(dateType, str, timeZone)));
            hashMap.put(str, hashMap2);
        }
        HashMap<DateType, SimpleDateFormat> hashMap3 = hashMap2;
        SimpleDateFormat simpleDateFormat = hashMap3.get(dateType);
        if (simpleDateFormat == null) {
            simpleDateFormat = INSTANCE.createFormatFor(dateType, str, timeZone);
            hashMap3.put(dateType, simpleDateFormat);
        }
        return simpleDateFormat;
    }

    private final SimpleDateFormat createFormatFor(DateType dateType, String str, TimeZone timeZone) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat(dateType.getFormat(), new Locale(str));
        if (timeZone == null) {
            timeZone = dateType.getTimeZone();
        }
        simpleDateFormat.setTimeZone(timeZone);
        return simpleDateFormat;
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum ISO uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:444)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:368)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:333)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:318)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:258)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInvoke(EnumVisitor.java:289)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* compiled from: DateFormatter.kt */
    /* loaded from: classes4.dex */
    public static final class DateType {
        private static final /* synthetic */ DateType[] $VALUES;
        public static final DateType DATE_AND_TIME;
        public static final DateType ISO;
        public static final DateType ISO_EXTENDED;
        public static final DateType ONLY_DATE;
        public static final DateType ONLY_TIME;
        public static final DateType ONLY_TIME_SECONDS;
        private final String format;
        private final TimeZone timeZone;

        private static final /* synthetic */ DateType[] $values() {
            return new DateType[]{ISO, ISO_EXTENDED, ONLY_TIME, ONLY_TIME_SECONDS, ONLY_DATE, DATE_AND_TIME};
        }

        public static DateType valueOf(String str) {
            return (DateType) Enum.valueOf(DateType.class, str);
        }

        public static DateType[] values() {
            return (DateType[]) $VALUES.clone();
        }

        private DateType(String str, int i, String str2, TimeZone timeZone) {
            this.format = str2;
            this.timeZone = timeZone;
        }

        public final String getFormat() {
            return this.format;
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
            throw new UnsupportedOperationException("Method not decompiled: com.iMe.utils.formatter.DateFormatter.DateType.<init>(java.lang.String, int, java.lang.String, java.util.TimeZone, int, kotlin.jvm.internal.DefaultConstructorMarker):void");
        }

        public final TimeZone getTimeZone() {
            return this.timeZone;
        }

        static {
            TimeZone timeZone = DesugarTimeZone.getTimeZone("UTC");
            Intrinsics.checkNotNullExpressionValue(timeZone, "getTimeZone(TIME_ZONE_UTC_ID)");
            ISO = new DateType("ISO", 0, "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", timeZone);
            ISO_EXTENDED = new DateType("ISO_EXTENDED", 1, "yyyy-MM-dd'T'HH:mm:ssXXX", null, 2, null);
            ONLY_TIME = new DateType("ONLY_TIME", 2, "HH:mm", null, 2, null);
            ONLY_TIME_SECONDS = new DateType("ONLY_TIME_SECONDS", 3, "HH:mm:ss", null, 2, null);
            ONLY_DATE = new DateType("ONLY_DATE", 4, "dd MMM yyyy", null, 2, null);
            DATE_AND_TIME = new DateType("DATE_AND_TIME", 5, "dd MMM yyyy HH:mm", null, 2, null);
            $VALUES = $values();
        }
    }
}
