package okhttp3;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;
/* compiled from: MediaType.kt */
/* loaded from: classes4.dex */
public final class MediaType {
    private final String mediaType;
    private final String[] parameterNamesAndValues;
    private final String subtype;
    private final String type;
    public static final Companion Companion = new Companion(null);
    private static final Pattern TYPE_SUBTYPE = Pattern.compile("([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)/([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)");
    private static final Pattern PARAMETER = Pattern.compile(";\\s*(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)=(?:([a-zA-Z0-9-!#$%&'*+.^_`{|}~]+)|\"([^\"]*)\"))?");

    public static final MediaType get(String str) {
        return Companion.get(str);
    }

    public static final MediaType parse(String str) {
        return Companion.parse(str);
    }

    private MediaType(String str, String str2, String str3, String[] strArr) {
        this.mediaType = str;
        this.type = str2;
        this.subtype = str3;
        this.parameterNamesAndValues = strArr;
    }

    public /* synthetic */ MediaType(String str, String str2, String str3, String[] strArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(str, str2, str3, strArr);
    }

    public final String type() {
        return this.type;
    }

    public final String subtype() {
        return this.subtype;
    }

    public static /* synthetic */ Charset charset$default(MediaType mediaType, Charset charset, int i, Object obj) {
        if ((i & 1) != 0) {
            charset = null;
        }
        return mediaType.charset(charset);
    }

    public final Charset charset(Charset charset) {
        String parameter = parameter("charset");
        if (parameter != null) {
            try {
                return Charset.forName(parameter);
            } catch (IllegalArgumentException unused) {
                return charset;
            }
        }
        return charset;
    }

    public final String parameter(String name) {
        IntRange indices;
        Intrinsics.checkNotNullParameter(name, "name");
        indices = ArraysKt___ArraysKt.getIndices(this.parameterNamesAndValues);
        IntProgression step = RangesKt.step(indices, 2);
        int first = step.getFirst();
        int last = step.getLast();
        int step2 = step.getStep();
        if (step2 >= 0) {
            if (first > last) {
                return null;
            }
        } else if (first < last) {
            return null;
        }
        while (!StringsKt.equals(this.parameterNamesAndValues[first], name, true)) {
            if (first == last) {
                return null;
            }
            first += step2;
        }
        return this.parameterNamesAndValues[first + 1];
    }

    public String toString() {
        return this.mediaType;
    }

    public boolean equals(Object obj) {
        return (obj instanceof MediaType) && Intrinsics.areEqual(((MediaType) obj).mediaType, this.mediaType);
    }

    public int hashCode() {
        return this.mediaType.hashCode();
    }

    /* compiled from: MediaType.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final MediaType get(String toMediaType) {
            Intrinsics.checkNotNullParameter(toMediaType, "$this$toMediaType");
            Matcher matcher = MediaType.TYPE_SUBTYPE.matcher(toMediaType);
            if (!matcher.lookingAt()) {
                throw new IllegalArgumentException(("No subtype found for: \"" + toMediaType + '\"').toString());
            }
            String group = matcher.group(1);
            Intrinsics.checkNotNullExpressionValue(group, "typeSubtype.group(1)");
            Locale locale = Locale.US;
            Intrinsics.checkNotNullExpressionValue(locale, "Locale.US");
            Objects.requireNonNull(group, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = group.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            String group2 = matcher.group(2);
            Intrinsics.checkNotNullExpressionValue(group2, "typeSubtype.group(2)");
            Intrinsics.checkNotNullExpressionValue(locale, "Locale.US");
            Objects.requireNonNull(group2, "null cannot be cast to non-null type java.lang.String");
            String lowerCase2 = group2.toLowerCase(locale);
            Intrinsics.checkNotNullExpressionValue(lowerCase2, "(this as java.lang.String).toLowerCase(locale)");
            ArrayList arrayList = new ArrayList();
            Matcher matcher2 = MediaType.PARAMETER.matcher(toMediaType);
            int end = matcher.end();
            while (end < toMediaType.length()) {
                matcher2.region(end, toMediaType.length());
                if (!matcher2.lookingAt()) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Parameter is not formatted correctly: \"");
                    String substring = toMediaType.substring(end);
                    Intrinsics.checkNotNullExpressionValue(substring, "(this as java.lang.String).substring(startIndex)");
                    sb.append(substring);
                    sb.append("\" for: \"");
                    sb.append(toMediaType);
                    sb.append('\"');
                    throw new IllegalArgumentException(sb.toString().toString());
                }
                String group3 = matcher2.group(1);
                if (group3 == null) {
                    end = matcher2.end();
                } else {
                    String group4 = matcher2.group(2);
                    if (group4 == null) {
                        group4 = matcher2.group(3);
                    } else if (StringsKt.startsWith$default(group4, "'", false, 2, (Object) null) && StringsKt.endsWith$default(group4, "'", false, 2, (Object) null) && group4.length() > 2) {
                        group4 = group4.substring(1, group4.length() - 1);
                        Intrinsics.checkNotNullExpressionValue(group4, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                    }
                    arrayList.add(group3);
                    arrayList.add(group4);
                    end = matcher2.end();
                }
            }
            Object[] array = arrayList.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return new MediaType(toMediaType, lowerCase, lowerCase2, (String[]) array, null);
        }

        public final MediaType parse(String toMediaTypeOrNull) {
            Intrinsics.checkNotNullParameter(toMediaTypeOrNull, "$this$toMediaTypeOrNull");
            try {
                return get(toMediaTypeOrNull);
            } catch (IllegalArgumentException unused) {
                return null;
            }
        }
    }
}
