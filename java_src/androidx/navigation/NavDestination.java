package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayKt;
import androidx.navigation.NavDeepLink;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Unit;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt;
import kotlin.text.StringsKt;
/* compiled from: NavDestination.kt */
/* loaded from: classes.dex */
public class NavDestination {
    public static final Companion Companion = new Companion(null);
    private Map<String, NavArgument> _arguments;
    private final SparseArrayCompat<NavAction> actions;
    private final List<NavDeepLink> deepLinks;

    /* renamed from: id */
    private int f50id;
    private String idName;
    private CharSequence label;
    private final String navigatorName;
    private NavGraph parent;
    private String route;

    public boolean supportsActions() {
        return true;
    }

    public NavDestination(String navigatorName) {
        Intrinsics.checkNotNullParameter(navigatorName, "navigatorName");
        this.navigatorName = navigatorName;
        this.deepLinks = new ArrayList();
        this.actions = new SparseArrayCompat<>();
        this._arguments = new LinkedHashMap();
    }

    public final String getNavigatorName() {
        return this.navigatorName;
    }

    /* compiled from: NavDestination.kt */
    /* loaded from: classes.dex */
    public static final class DeepLinkMatch implements Comparable<DeepLinkMatch> {
        private final NavDestination destination;
        private final boolean hasMatchingAction;
        private final boolean isExactDeepLink;
        private final Bundle matchingArgs;
        private final int mimeTypeMatchLevel;

        public DeepLinkMatch(NavDestination destination, Bundle bundle, boolean z, boolean z2, int i) {
            Intrinsics.checkNotNullParameter(destination, "destination");
            this.destination = destination;
            this.matchingArgs = bundle;
            this.isExactDeepLink = z;
            this.hasMatchingAction = z2;
            this.mimeTypeMatchLevel = i;
        }

        public final NavDestination getDestination() {
            return this.destination;
        }

        public final Bundle getMatchingArgs() {
            return this.matchingArgs;
        }

        @Override // java.lang.Comparable
        public int compareTo(DeepLinkMatch other) {
            Intrinsics.checkNotNullParameter(other, "other");
            boolean z = this.isExactDeepLink;
            if (!z || other.isExactDeepLink) {
                if (z || !other.isExactDeepLink) {
                    Bundle bundle = this.matchingArgs;
                    if (bundle == null || other.matchingArgs != null) {
                        if (bundle != null || other.matchingArgs == null) {
                            if (bundle != null) {
                                int size = bundle.size();
                                Bundle bundle2 = other.matchingArgs;
                                Intrinsics.checkNotNull(bundle2);
                                int size2 = size - bundle2.size();
                                if (size2 > 0) {
                                    return 1;
                                }
                                if (size2 < 0) {
                                    return -1;
                                }
                            }
                            boolean z2 = this.hasMatchingAction;
                            if (!z2 || other.hasMatchingAction) {
                                if (z2 || !other.hasMatchingAction) {
                                    return this.mimeTypeMatchLevel - other.mimeTypeMatchLevel;
                                }
                                return -1;
                            }
                            return 1;
                        }
                        return -1;
                    }
                    return 1;
                }
                return -1;
            }
            return 1;
        }
    }

    public final NavGraph getParent() {
        return this.parent;
    }

    public final void setParent(NavGraph navGraph) {
        this.parent = navGraph;
    }

    public final Map<String, NavArgument> getArguments() {
        return MapsKt.toMap(this._arguments);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public NavDestination(Navigator<? extends NavDestination> navigator) {
        this(NavigatorProvider.Companion.getNameForNavigator$navigation_common_release(navigator.getClass()));
        Intrinsics.checkNotNullParameter(navigator, "navigator");
    }

    public void onInflate(Context context, AttributeSet attrs) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(attrs, "attrs");
        TypedArray obtainAttributes = context.getResources().obtainAttributes(attrs, androidx.navigation.common.R$styleable.Navigator);
        Intrinsics.checkNotNullExpressionValue(obtainAttributes, "context.resources.obtain…s, R.styleable.Navigator)");
        setRoute(obtainAttributes.getString(androidx.navigation.common.R$styleable.Navigator_route));
        int i = androidx.navigation.common.R$styleable.Navigator_android_id;
        if (obtainAttributes.hasValue(i)) {
            setId(obtainAttributes.getResourceId(i, 0));
            this.idName = Companion.getDisplayName(context, this.f50id);
        }
        this.label = obtainAttributes.getText(androidx.navigation.common.R$styleable.Navigator_android_label);
        Unit unit = Unit.INSTANCE;
        obtainAttributes.recycle();
    }

    public final int getId() {
        return this.f50id;
    }

    public final void setId(int i) {
        this.f50id = i;
        this.idName = null;
    }

    public final String getRoute() {
        return this.route;
    }

    public final void setRoute(String str) {
        Object obj;
        if (str == null) {
            setId(0);
        } else if (!(!StringsKt.isBlank(str))) {
            throw new IllegalArgumentException("Cannot have an empty route".toString());
        } else {
            String createRoute = Companion.createRoute(str);
            setId(createRoute.hashCode());
            addDeepLink(createRoute);
        }
        List<NavDeepLink> list = this.deepLinks;
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (Intrinsics.areEqual(((NavDeepLink) obj).getUriPattern(), Companion.createRoute(this.route))) {
                break;
            }
        }
        TypeIntrinsics.asMutableCollection(list).remove(obj);
        this.route = str;
    }

    public String getDisplayName() {
        String str = this.idName;
        return str == null ? String.valueOf(this.f50id) : str;
    }

    public final void addDeepLink(String uriPattern) {
        Intrinsics.checkNotNullParameter(uriPattern, "uriPattern");
        addDeepLink(new NavDeepLink.Builder().setUriPattern(uriPattern).build());
    }

    public final void addDeepLink(NavDeepLink navDeepLink) {
        Intrinsics.checkNotNullParameter(navDeepLink, "navDeepLink");
        Map<String, NavArgument> arguments = getArguments();
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<String, NavArgument>> it = arguments.entrySet().iterator();
        while (true) {
            boolean z = true;
            if (!it.hasNext()) {
                break;
            }
            Map.Entry<String, NavArgument> next = it.next();
            NavArgument value = next.getValue();
            if ((value.isNullable() || value.isDefaultValuePresent()) ? false : false) {
                linkedHashMap.put(next.getKey(), next.getValue());
            }
        }
        Set keySet = linkedHashMap.keySet();
        ArrayList arrayList = new ArrayList();
        for (Object obj : keySet) {
            if (!navDeepLink.getArgumentsNames$navigation_common_release().contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            throw new IllegalArgumentException(("Deep link " + navDeepLink.getUriPattern() + " can't be used to open destination " + this + ".\nFollowing required arguments are missing: " + arrayList).toString());
        }
        this.deepLinks.add(navDeepLink);
    }

    public DeepLinkMatch matchDeepLink(NavDeepLinkRequest navDeepLinkRequest) {
        Intrinsics.checkNotNullParameter(navDeepLinkRequest, "navDeepLinkRequest");
        if (this.deepLinks.isEmpty()) {
            return null;
        }
        DeepLinkMatch deepLinkMatch = null;
        for (NavDeepLink navDeepLink : this.deepLinks) {
            Uri uri = navDeepLinkRequest.getUri();
            Bundle matchingArguments = uri != null ? navDeepLink.getMatchingArguments(uri, getArguments()) : null;
            String action = navDeepLinkRequest.getAction();
            boolean z = action != null && Intrinsics.areEqual(action, navDeepLink.getAction());
            String mimeType = navDeepLinkRequest.getMimeType();
            int mimeTypeMatchRating = mimeType != null ? navDeepLink.getMimeTypeMatchRating(mimeType) : -1;
            if (matchingArguments != null || z || mimeTypeMatchRating > -1) {
                DeepLinkMatch deepLinkMatch2 = new DeepLinkMatch(this, matchingArguments, navDeepLink.isExactDeepLink(), z, mimeTypeMatchRating);
                if (deepLinkMatch == null || deepLinkMatch2.compareTo(deepLinkMatch) > 0) {
                    deepLinkMatch = deepLinkMatch2;
                }
            }
        }
        return deepLinkMatch;
    }

    public static /* synthetic */ int[] buildDeepLinkIds$default(NavDestination navDestination, NavDestination navDestination2, int i, Object obj) {
        if (obj == null) {
            if ((i & 1) != 0) {
                navDestination2 = null;
            }
            return navDestination.buildDeepLinkIds(navDestination2);
        }
        throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: buildDeepLinkIds");
    }

    public final int[] buildDeepLinkIds(NavDestination navDestination) {
        ArrayDeque arrayDeque = new ArrayDeque();
        NavGraph navGraph = this;
        while (true) {
            Intrinsics.checkNotNull(navGraph);
            NavGraph navGraph2 = navGraph.parent;
            if ((navDestination != null ? navDestination.parent : null) != null) {
                NavGraph navGraph3 = navDestination.parent;
                Intrinsics.checkNotNull(navGraph3);
                if (navGraph3.findNode(navGraph.f50id) == navGraph) {
                    arrayDeque.addFirst(navGraph);
                    break;
                }
            }
            if (navGraph2 == null || navGraph2.getStartDestinationId() != navGraph.f50id) {
                arrayDeque.addFirst(navGraph);
            }
            if (Intrinsics.areEqual(navGraph2, navDestination) || navGraph2 == null) {
                break;
            }
            navGraph = navGraph2;
        }
        List<NavDestination> list = CollectionsKt.toList(arrayDeque);
        ArrayList arrayList = new ArrayList(CollectionsKt.collectionSizeOrDefault(list, 10));
        for (NavDestination navDestination2 : list) {
            arrayList.add(Integer.valueOf(navDestination2.f50id));
        }
        return CollectionsKt.toIntArray(arrayList);
    }

    public final NavAction getAction(int i) {
        NavAction navAction = this.actions.isEmpty() ? null : this.actions.get(i);
        if (navAction == null) {
            NavGraph navGraph = this.parent;
            if (navGraph != null) {
                return navGraph.getAction(i);
            }
            return null;
        }
        return navAction;
    }

    public final void putAction(int i, NavAction action) {
        Intrinsics.checkNotNullParameter(action, "action");
        if (supportsActions()) {
            if (!(i != 0)) {
                throw new IllegalArgumentException("Cannot have an action with actionId 0".toString());
            }
            this.actions.put(i, action);
            return;
        }
        throw new UnsupportedOperationException("Cannot add action " + i + " to " + this + " as it does not support actions, indicating that it is a terminal destination in your navigation graph and will never trigger actions.");
    }

    public final void addArgument(String argumentName, NavArgument argument) {
        Intrinsics.checkNotNullParameter(argumentName, "argumentName");
        Intrinsics.checkNotNullParameter(argument, "argument");
        this._arguments.put(argumentName, argument);
    }

    public final Bundle addInDefaultArgs(Bundle bundle) {
        if (bundle == null) {
            Map<String, NavArgument> map = this._arguments;
            if (map == null || map.isEmpty()) {
                return null;
            }
        }
        Bundle bundle2 = new Bundle();
        for (Map.Entry<String, NavArgument> entry : this._arguments.entrySet()) {
            entry.getValue().putDefaultValue(entry.getKey(), bundle2);
        }
        if (bundle != null) {
            bundle2.putAll(bundle);
            for (Map.Entry<String, NavArgument> entry2 : this._arguments.entrySet()) {
                String key = entry2.getKey();
                NavArgument value = entry2.getValue();
                if (!value.verify(key, bundle2)) {
                    throw new IllegalArgumentException(("Wrong argument type for '" + key + "' in argument bundle. " + value.getType().getName() + " expected.").toString());
                }
            }
        }
        return bundle2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("(");
        String str = this.idName;
        if (str == null) {
            sb.append("0x");
            sb.append(Integer.toHexString(this.f50id));
        } else {
            sb.append(str);
        }
        sb.append(")");
        String str2 = this.route;
        if (!(str2 == null || StringsKt.isBlank(str2))) {
            sb.append(" route=");
            sb.append(this.route);
        }
        if (this.label != null) {
            sb.append(" label=");
            sb.append(this.label);
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
        return sb2;
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:83:? A[ADDED_TO_REGION, RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 315
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.navigation.NavDestination.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        Set<String> keySet;
        int i = this.f50id * 31;
        String str = this.route;
        int hashCode = i + (str != null ? str.hashCode() : 0);
        for (NavDeepLink navDeepLink : this.deepLinks) {
            int i2 = hashCode * 31;
            String uriPattern = navDeepLink.getUriPattern();
            int hashCode2 = (i2 + (uriPattern != null ? uriPattern.hashCode() : 0)) * 31;
            String action = navDeepLink.getAction();
            int hashCode3 = (hashCode2 + (action != null ? action.hashCode() : 0)) * 31;
            String mimeType = navDeepLink.getMimeType();
            hashCode = hashCode3 + (mimeType != null ? mimeType.hashCode() : 0);
        }
        Iterator valueIterator = SparseArrayKt.valueIterator(this.actions);
        while (valueIterator.hasNext()) {
            NavAction navAction = (NavAction) valueIterator.next();
            int destinationId = ((hashCode * 31) + navAction.getDestinationId()) * 31;
            NavOptions navOptions = navAction.getNavOptions();
            hashCode = destinationId + (navOptions != null ? navOptions.hashCode() : 0);
            Bundle defaultArguments = navAction.getDefaultArguments();
            if (defaultArguments != null && (keySet = defaultArguments.keySet()) != null) {
                Intrinsics.checkNotNullExpressionValue(keySet, "keySet()");
                for (String str2 : keySet) {
                    int i3 = hashCode * 31;
                    Bundle defaultArguments2 = navAction.getDefaultArguments();
                    Intrinsics.checkNotNull(defaultArguments2);
                    Object obj = defaultArguments2.get(str2);
                    hashCode = i3 + (obj != null ? obj.hashCode() : 0);
                }
            }
        }
        for (String str3 : getArguments().keySet()) {
            int hashCode4 = ((hashCode * 31) + str3.hashCode()) * 31;
            NavArgument navArgument = getArguments().get(str3);
            hashCode = hashCode4 + (navArgument != null ? navArgument.hashCode() : 0);
        }
        return hashCode;
    }

    /* compiled from: NavDestination.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String getDisplayName(Context context, int i) {
            String valueOf;
            Intrinsics.checkNotNullParameter(context, "context");
            if (i <= 16777215) {
                return String.valueOf(i);
            }
            try {
                valueOf = context.getResources().getResourceName(i);
            } catch (Resources.NotFoundException unused) {
                valueOf = String.valueOf(i);
            }
            Intrinsics.checkNotNullExpressionValue(valueOf, "try {\n                co….toString()\n            }");
            return valueOf;
        }

        public final String createRoute(String str) {
            if (str != null) {
                return "android-app://androidx.navigation/" + str;
            }
            return "";
        }

        public final Sequence<NavDestination> getHierarchy(NavDestination navDestination) {
            Intrinsics.checkNotNullParameter(navDestination, "<this>");
            return SequencesKt.generateSequence(navDestination, new Function1<NavDestination, NavDestination>() { // from class: androidx.navigation.NavDestination$Companion$hierarchy$1
                @Override // kotlin.jvm.functions.Function1
                public final NavDestination invoke(NavDestination it) {
                    Intrinsics.checkNotNullParameter(it, "it");
                    return it.getParent();
                }
            });
        }
    }

    static {
        new LinkedHashMap();
    }
}
