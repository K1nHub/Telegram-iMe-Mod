package androidx.navigation;

import android.net.Uri;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.collections.CollectionsKt__CollectionsKt;
import kotlin.collections.CollectionsKt__MutableCollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
/* compiled from: NavDeepLink.kt */
/* loaded from: classes.dex */
public final class NavDeepLink {
    @Deprecated
    private static final Pattern SCHEME_PATTERN;
    private final String action;
    private boolean isExactDeepLink;
    private boolean isParameterizedQuery;
    private boolean isSingleQueryParamValueOnly;
    private final String mimeType;
    private String mimeTypeFinalRegex;
    private final Lazy mimeTypePattern$delegate;
    private final Lazy pattern$delegate;
    private String patternFinalRegex;
    private final String uriPattern;
    private final List<String> arguments = new ArrayList();
    private final Map<String, ParamQuery> paramArgMap = new LinkedHashMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r19v0, types: [androidx.navigation.NavDeepLink] */
    /* JADX WARN: Type inference failed for: r4v17 */
    /* JADX WARN: Type inference failed for: r4v18 */
    /* JADX WARN: Type inference failed for: r4v4, types: [int] */
    public NavDeepLink(String str, String str2, String str3) {
        Lazy lazy;
        Lazy lazy2;
        String replace$default;
        String replace$default2;
        String replace$default3;
        this.uriPattern = str;
        this.action = str2;
        this.mimeType = str3;
        lazy = LazyKt__LazyJVMKt.lazy(new Function0<Pattern>() { // from class: androidx.navigation.NavDeepLink$pattern$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Pattern invoke() {
                String str4;
                str4 = NavDeepLink.this.patternFinalRegex;
                if (str4 != null) {
                    return Pattern.compile(str4, 2);
                }
                return null;
            }
        });
        this.pattern$delegate = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(new Function0<Pattern>() { // from class: androidx.navigation.NavDeepLink$mimeTypePattern$2
            /* JADX INFO: Access modifiers changed from: package-private */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Pattern invoke() {
                String str4;
                str4 = NavDeepLink.this.mimeTypeFinalRegex;
                if (str4 != null) {
                    return Pattern.compile(str4);
                }
                return null;
            }
        });
        this.mimeTypePattern$delegate = lazy2;
        if (str != null) {
            Uri parse = Uri.parse(str);
            boolean z = true;
            this.isParameterizedQuery = parse.getQuery() != null;
            StringBuilder sb = new StringBuilder("^");
            if (!SCHEME_PATTERN.matcher(str).find()) {
                sb.append("http[s]?://");
            }
            Pattern fillInPattern = Pattern.compile("\\{(.+?)\\}");
            if (this.isParameterizedQuery) {
                Matcher matcher = Pattern.compile("(\\?)").matcher(str);
                if (matcher.find()) {
                    String substring = str.substring(0, matcher.start());
                    Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
                    Intrinsics.checkNotNullExpressionValue(fillInPattern, "fillInPattern");
                    this.isExactDeepLink = buildPathRegex(substring, sb, fillInPattern);
                }
                for (String paramName : parse.getQueryParameterNames()) {
                    StringBuilder sb2 = new StringBuilder();
                    String queryParam = parse.getQueryParameter(paramName);
                    if (queryParam == null) {
                        this.isSingleQueryParamValueOnly = z;
                        queryParam = paramName;
                    }
                    Matcher matcher2 = fillInPattern.matcher(queryParam);
                    ParamQuery paramQuery = new ParamQuery();
                    int i = 0;
                    ?? r4 = z;
                    while (matcher2.find()) {
                        String group = matcher2.group((int) r4);
                        Objects.requireNonNull(group, "null cannot be cast to non-null type kotlin.String");
                        paramQuery.addArgumentName(group);
                        Intrinsics.checkNotNullExpressionValue(queryParam, "queryParam");
                        String substring2 = queryParam.substring(i, matcher2.start());
                        Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String…ing(startIndex, endIndex)");
                        sb2.append(Pattern.quote(substring2));
                        sb2.append("(.+?)?");
                        i = matcher2.end();
                        r4 = 1;
                    }
                    if (i < queryParam.length()) {
                        Intrinsics.checkNotNullExpressionValue(queryParam, "queryParam");
                        String substring3 = queryParam.substring(i);
                        Intrinsics.checkNotNullExpressionValue(substring3, "this as java.lang.String).substring(startIndex)");
                        sb2.append(Pattern.quote(substring3));
                    }
                    String sb3 = sb2.toString();
                    Intrinsics.checkNotNullExpressionValue(sb3, "argRegex.toString()");
                    replace$default3 = StringsKt__StringsJVMKt.replace$default(sb3, ".*", "\\E.*\\Q", false, 4, (Object) null);
                    paramQuery.setParamRegex(replace$default3);
                    Map<String, ParamQuery> map = this.paramArgMap;
                    Intrinsics.checkNotNullExpressionValue(paramName, "paramName");
                    map.put(paramName, paramQuery);
                    z = true;
                }
            } else {
                Intrinsics.checkNotNullExpressionValue(fillInPattern, "fillInPattern");
                this.isExactDeepLink = buildPathRegex(str, sb, fillInPattern);
            }
            String sb4 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb4, "uriRegex.toString()");
            replace$default2 = StringsKt__StringsJVMKt.replace$default(sb4, ".*", "\\E.*\\Q", false, 4, (Object) null);
            this.patternFinalRegex = replace$default2;
        }
        if (this.mimeType != null) {
            if (!Pattern.compile("^[\\s\\S]+/[\\s\\S]+$").matcher(this.mimeType).matches()) {
                throw new IllegalArgumentException(("The given mimeType " + this.mimeType + " does not match to required \"type/subtype\" format").toString());
            }
            MimeType mimeType = new MimeType(this.mimeType);
            replace$default = StringsKt__StringsJVMKt.replace$default("^(" + mimeType.getType() + "|[*]+)/(" + mimeType.getSubType() + "|[*]+)$", "*|[*]", "[\\s\\S]", false, 4, (Object) null);
            this.mimeTypeFinalRegex = replace$default;
        }
    }

    public final String getUriPattern() {
        return this.uriPattern;
    }

    public final String getAction() {
        return this.action;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    private final Pattern getPattern() {
        return (Pattern) this.pattern$delegate.getValue();
    }

    private final Pattern getMimeTypePattern() {
        return (Pattern) this.mimeTypePattern$delegate.getValue();
    }

    public final List<String> getArgumentsNames$navigation_common_release() {
        List<String> plus;
        List<String> list = this.arguments;
        Collection<ParamQuery> values = this.paramArgMap.values();
        ArrayList arrayList = new ArrayList();
        for (ParamQuery paramQuery : values) {
            CollectionsKt__MutableCollectionsKt.addAll(arrayList, paramQuery.getArguments());
        }
        plus = CollectionsKt___CollectionsKt.plus((Collection) list, (Iterable) arrayList);
        return plus;
    }

    public final boolean isExactDeepLink() {
        return this.isExactDeepLink;
    }

    private final boolean buildPathRegex(String str, StringBuilder sb, Pattern pattern) {
        boolean contains$default;
        Matcher matcher = pattern.matcher(str);
        contains$default = StringsKt__StringsKt.contains$default((CharSequence) str, (CharSequence) ".*", false, 2, (Object) null);
        boolean z = !contains$default;
        int i = 0;
        while (matcher.find()) {
            String group = matcher.group(1);
            Objects.requireNonNull(group, "null cannot be cast to non-null type kotlin.String");
            this.arguments.add(group);
            String substring = str.substring(i, matcher.start());
            Intrinsics.checkNotNullExpressionValue(substring, "this as java.lang.String…ing(startIndex, endIndex)");
            sb.append(Pattern.quote(substring));
            sb.append("([^/]+?)");
            i = matcher.end();
            z = false;
        }
        if (i < str.length()) {
            String substring2 = str.substring(i);
            Intrinsics.checkNotNullExpressionValue(substring2, "this as java.lang.String).substring(startIndex)");
            sb.append(Pattern.quote(substring2));
        }
        sb.append("($|(\\?(.)*)|(\\#(.)*))");
        return z;
    }

    public final int getMimeTypeMatchRating(String mimeType) {
        Intrinsics.checkNotNullParameter(mimeType, "mimeType");
        if (this.mimeType != null) {
            Pattern mimeTypePattern = getMimeTypePattern();
            Intrinsics.checkNotNull(mimeTypePattern);
            if (mimeTypePattern.matcher(mimeType).matches()) {
                return new MimeType(this.mimeType).compareTo(new MimeType(mimeType));
            }
        }
        return -1;
    }

    public final Bundle getMatchingArguments(Uri deepLink, Map<String, NavArgument> arguments) {
        Matcher matcher;
        String str;
        String substringAfter$default;
        Intrinsics.checkNotNullParameter(deepLink, "deepLink");
        Intrinsics.checkNotNullParameter(arguments, "arguments");
        Pattern pattern = getPattern();
        Matcher matcher2 = pattern != null ? pattern.matcher(deepLink.toString()) : null;
        if (matcher2 != null && matcher2.matches()) {
            Bundle bundle = new Bundle();
            int size = this.arguments.size();
            int i = 0;
            while (i < size) {
                String str2 = this.arguments.get(i);
                i++;
                String value = Uri.decode(matcher2.group(i));
                NavArgument navArgument = arguments.get(str2);
                try {
                    Intrinsics.checkNotNullExpressionValue(value, "value");
                } catch (IllegalArgumentException unused) {
                }
                if (parseArgument(bundle, str2, value, navArgument)) {
                    return null;
                }
            }
            if (this.isParameterizedQuery) {
                for (String str3 : this.paramArgMap.keySet()) {
                    ParamQuery paramQuery = this.paramArgMap.get(str3);
                    String queryParameter = deepLink.getQueryParameter(str3);
                    if (this.isSingleQueryParamValueOnly) {
                        String uri = deepLink.toString();
                        Intrinsics.checkNotNullExpressionValue(uri, "deepLink.toString()");
                        substringAfter$default = StringsKt__StringsKt.substringAfter$default(uri, '?', (String) null, 2, (Object) null);
                        if (!Intrinsics.areEqual(substringAfter$default, uri)) {
                            queryParameter = substringAfter$default;
                        }
                    }
                    if (queryParameter != null) {
                        Intrinsics.checkNotNull(paramQuery);
                        matcher = Pattern.compile(paramQuery.getParamRegex(), 32).matcher(queryParameter);
                        if (!matcher.matches()) {
                            return null;
                        }
                    } else {
                        matcher = null;
                    }
                    Bundle bundle2 = new Bundle();
                    try {
                        Intrinsics.checkNotNull(paramQuery);
                        int size2 = paramQuery.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            if (matcher != null) {
                                str = matcher.group(i2 + 1);
                                if (str == null) {
                                    str = "";
                                }
                            } else {
                                str = null;
                            }
                            String argumentName = paramQuery.getArgumentName(i2);
                            NavArgument navArgument2 = arguments.get(argumentName);
                            if (str != null) {
                                if (!Intrinsics.areEqual(str, '{' + argumentName + '}') && parseArgument(bundle2, argumentName, str, navArgument2)) {
                                    return null;
                                }
                            }
                        }
                        bundle.putAll(bundle2);
                    } catch (IllegalArgumentException unused2) {
                    }
                }
            }
            for (Map.Entry<String, NavArgument> entry : arguments.entrySet()) {
                String key = entry.getKey();
                NavArgument value2 = entry.getValue();
                if (((value2 == null || value2.isNullable() || value2.isDefaultValuePresent()) ? false : true) && !bundle.containsKey(key)) {
                    return null;
                }
            }
            return bundle;
        }
        return null;
    }

    private final boolean parseArgument(Bundle bundle, String str, String str2, NavArgument navArgument) {
        if (navArgument != null) {
            navArgument.getType().parseAndPut(bundle, str, str2);
            return false;
        }
        bundle.putString(str, str2);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavDeepLink.kt */
    /* loaded from: classes.dex */
    public static final class ParamQuery {
        private final List<String> arguments = new ArrayList();
        private String paramRegex;

        public final String getParamRegex() {
            return this.paramRegex;
        }

        public final void setParamRegex(String str) {
            this.paramRegex = str;
        }

        public final List<String> getArguments() {
            return this.arguments;
        }

        public final void addArgumentName(String name) {
            Intrinsics.checkNotNullParameter(name, "name");
            this.arguments.add(name);
        }

        public final String getArgumentName(int i) {
            return this.arguments.get(i);
        }

        public final int size() {
            return this.arguments.size();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: NavDeepLink.kt */
    /* loaded from: classes.dex */
    public static final class MimeType implements Comparable<MimeType> {
        private String subType;
        private String type;

        public MimeType(String mimeType) {
            List emptyList;
            boolean z;
            Intrinsics.checkNotNullParameter(mimeType, "mimeType");
            List<String> split = new Regex("/").split(mimeType, 0);
            if (!split.isEmpty()) {
                ListIterator<String> listIterator = split.listIterator(split.size());
                while (listIterator.hasPrevious()) {
                    if (listIterator.previous().length() == 0) {
                        z = true;
                        continue;
                    } else {
                        z = false;
                        continue;
                    }
                    if (!z) {
                        emptyList = CollectionsKt___CollectionsKt.take(split, listIterator.nextIndex() + 1);
                        break;
                    }
                }
            }
            emptyList = CollectionsKt__CollectionsKt.emptyList();
            this.type = (String) emptyList.get(0);
            this.subType = (String) emptyList.get(1);
        }

        public final String getType() {
            return this.type;
        }

        public final String getSubType() {
            return this.subType;
        }

        @Override // java.lang.Comparable
        public int compareTo(MimeType other) {
            Intrinsics.checkNotNullParameter(other, "other");
            int i = Intrinsics.areEqual(this.type, other.type) ? 2 : 0;
            return Intrinsics.areEqual(this.subType, other.subType) ? i + 1 : i;
        }
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof NavDeepLink)) {
            return false;
        }
        NavDeepLink navDeepLink = (NavDeepLink) obj;
        return Intrinsics.areEqual(this.uriPattern, navDeepLink.uriPattern) && Intrinsics.areEqual(this.action, navDeepLink.action) && Intrinsics.areEqual(this.mimeType, navDeepLink.mimeType);
    }

    public int hashCode() {
        String str = this.uriPattern;
        int hashCode = ((str != null ? str.hashCode() : 0) + 0) * 31;
        String str2 = this.action;
        int hashCode2 = (hashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.mimeType;
        return hashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    /* compiled from: NavDeepLink.kt */
    /* loaded from: classes.dex */
    public static final class Builder {
        private String action;
        private String mimeType;
        private String uriPattern;

        static {
            new Companion(null);
        }

        public final Builder setUriPattern(String uriPattern) {
            Intrinsics.checkNotNullParameter(uriPattern, "uriPattern");
            this.uriPattern = uriPattern;
            return this;
        }

        public final Builder setAction(String action) {
            Intrinsics.checkNotNullParameter(action, "action");
            if (!(action.length() > 0)) {
                throw new IllegalArgumentException("The NavDeepLink cannot have an empty action.".toString());
            }
            this.action = action;
            return this;
        }

        public final Builder setMimeType(String mimeType) {
            Intrinsics.checkNotNullParameter(mimeType, "mimeType");
            this.mimeType = mimeType;
            return this;
        }

        public final NavDeepLink build() {
            return new NavDeepLink(this.uriPattern, this.action, this.mimeType);
        }

        /* compiled from: NavDeepLink.kt */
        /* loaded from: classes.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            private Companion() {
            }
        }
    }

    /* compiled from: NavDeepLink.kt */
    /* loaded from: classes.dex */
    private static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }

    static {
        new Companion(null);
        SCHEME_PATTERN = Pattern.compile("^[a-zA-Z]+[+\\w\\-.]*:");
    }
}
