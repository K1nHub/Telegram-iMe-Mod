package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.navigation.NavArgument;
import androidx.navigation.NavDeepLink;
import androidx.navigation.NavOptions;
import java.io.IOException;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: NavInflater.kt */
/* loaded from: classes.dex */
public final class NavInflater {
    public static final Companion Companion = new Companion(null);
    private static final ThreadLocal<TypedValue> sTmpValue = new ThreadLocal<>();
    private final Context context;
    private final NavigatorProvider navigatorProvider;

    public NavInflater(Context context, NavigatorProvider navigatorProvider) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(navigatorProvider, "navigatorProvider");
        this.context = context;
        this.navigatorProvider = navigatorProvider;
    }

    public final NavGraph inflate(int i) {
        int next;
        Resources res = this.context.getResources();
        XmlResourceParser xml = res.getXml(i);
        Intrinsics.checkNotNullExpressionValue(xml, "res.getXml(graphResId)");
        AttributeSet attrs = Xml.asAttributeSet(xml);
        do {
            try {
                try {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } catch (Exception e) {
                    throw new RuntimeException("Exception inflating " + res.getResourceName(i) + " line " + xml.getLineNumber(), e);
                }
            } finally {
                xml.close();
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        Intrinsics.checkNotNullExpressionValue(res, "res");
        Intrinsics.checkNotNullExpressionValue(attrs, "attrs");
        NavDestination inflate = inflate(res, xml, attrs, i);
        if (!(inflate instanceof NavGraph)) {
            throw new IllegalArgumentException(("Root element <" + name + "> did not inflate into a NavGraph").toString());
        }
        return (NavGraph) inflate;
    }

    private final NavDestination inflate(Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, int i) throws XmlPullParserException, IOException {
        int depth;
        NavigatorProvider navigatorProvider = this.navigatorProvider;
        String name = xmlResourceParser.getName();
        Intrinsics.checkNotNullExpressionValue(name, "parser.name");
        NavDestination createDestination = navigatorProvider.getNavigator(name).createDestination();
        createDestination.onInflate(this.context, attributeSet);
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                break;
            } else if (next == 2 && depth <= depth2) {
                String name2 = xmlResourceParser.getName();
                if (Intrinsics.areEqual("argument", name2)) {
                    inflateArgumentForDestination(resources, createDestination, attributeSet, i);
                } else if (Intrinsics.areEqual("deepLink", name2)) {
                    inflateDeepLink(resources, createDestination, attributeSet);
                } else if (Intrinsics.areEqual("action", name2)) {
                    inflateAction(resources, createDestination, attributeSet, xmlResourceParser, i);
                } else if (Intrinsics.areEqual("include", name2) && (createDestination instanceof NavGraph)) {
                    TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, R$styleable.NavInclude);
                    Intrinsics.checkNotNullExpressionValue(obtainAttributes, "res.obtainAttributes(att…n.R.styleable.NavInclude)");
                    ((NavGraph) createDestination).addDestination(inflate(obtainAttributes.getResourceId(R$styleable.NavInclude_graph, 0)));
                    Unit unit = Unit.INSTANCE;
                    obtainAttributes.recycle();
                } else if (createDestination instanceof NavGraph) {
                    ((NavGraph) createDestination).addDestination(inflate(resources, xmlResourceParser, attributeSet, i));
                }
            }
        }
        return createDestination;
    }

    private final void inflateArgumentForDestination(Resources resources, NavDestination navDestination, AttributeSet attributeSet, int i) throws XmlPullParserException {
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, androidx.navigation.common.R$styleable.NavArgument);
        Intrinsics.checkNotNullExpressionValue(obtainAttributes, "res.obtainAttributes(att… R.styleable.NavArgument)");
        String string = obtainAttributes.getString(androidx.navigation.common.R$styleable.NavArgument_android_name);
        if (string == null) {
            throw new XmlPullParserException("Arguments must have a name");
        }
        Intrinsics.checkNotNullExpressionValue(string, "array.getString(R.stylea…uments must have a name\")");
        navDestination.addArgument(string, inflateArgument(obtainAttributes, resources, i));
        Unit unit = Unit.INSTANCE;
        obtainAttributes.recycle();
    }

    private final void inflateArgumentForBundle(Resources resources, Bundle bundle, AttributeSet attributeSet, int i) throws XmlPullParserException {
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, androidx.navigation.common.R$styleable.NavArgument);
        Intrinsics.checkNotNullExpressionValue(obtainAttributes, "res.obtainAttributes(att… R.styleable.NavArgument)");
        String string = obtainAttributes.getString(androidx.navigation.common.R$styleable.NavArgument_android_name);
        if (string == null) {
            throw new XmlPullParserException("Arguments must have a name");
        }
        Intrinsics.checkNotNullExpressionValue(string, "array.getString(R.stylea…uments must have a name\")");
        NavArgument inflateArgument = inflateArgument(obtainAttributes, resources, i);
        if (inflateArgument.isDefaultValuePresent()) {
            inflateArgument.putDefaultValue(string, bundle);
        }
        Unit unit = Unit.INSTANCE;
        obtainAttributes.recycle();
    }

    private final NavArgument inflateArgument(TypedArray typedArray, Resources resources, int i) throws XmlPullParserException {
        NavArgument.Builder builder = new NavArgument.Builder();
        int i2 = 0;
        builder.setIsNullable(typedArray.getBoolean(androidx.navigation.common.R$styleable.NavArgument_nullable, false));
        ThreadLocal<TypedValue> threadLocal = sTmpValue;
        TypedValue typedValue = threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        String string = typedArray.getString(androidx.navigation.common.R$styleable.NavArgument_argType);
        Object obj = null;
        NavType<Object> fromArgType = string != null ? NavType.Companion.fromArgType(string, resources.getResourcePackageName(i)) : null;
        int i3 = androidx.navigation.common.R$styleable.NavArgument_android_defaultValue;
        if (typedArray.getValue(i3, typedValue)) {
            NavType<Object> navType = NavType.ReferenceType;
            if (fromArgType == navType) {
                int i4 = typedValue.resourceId;
                if (i4 != 0) {
                    i2 = i4;
                } else if (typedValue.type != 16 || typedValue.data != 0) {
                    throw new XmlPullParserException("unsupported value '" + ((Object) typedValue.string) + "' for " + fromArgType.getName() + ". Must be a reference to a resource.");
                }
                obj = Integer.valueOf(i2);
            } else {
                int i5 = typedValue.resourceId;
                if (i5 != 0) {
                    if (fromArgType == null) {
                        fromArgType = navType;
                        obj = Integer.valueOf(i5);
                    } else {
                        throw new XmlPullParserException("unsupported value '" + ((Object) typedValue.string) + "' for " + fromArgType.getName() + ". You must use a \"" + navType.getName() + "\" type to reference other resources.");
                    }
                } else if (fromArgType == NavType.StringType) {
                    obj = typedArray.getString(i3);
                } else {
                    int i6 = typedValue.type;
                    if (i6 == 3) {
                        String obj2 = typedValue.string.toString();
                        if (fromArgType == null) {
                            fromArgType = NavType.Companion.inferFromValue(obj2);
                        }
                        obj = fromArgType.parseValue(obj2);
                    } else if (i6 == 4) {
                        fromArgType = Companion.checkNavType$navigation_runtime_release(typedValue, fromArgType, NavType.FloatType, string, "float");
                        obj = Float.valueOf(typedValue.getFloat());
                    } else if (i6 == 5) {
                        fromArgType = Companion.checkNavType$navigation_runtime_release(typedValue, fromArgType, NavType.IntType, string, "dimension");
                        obj = Integer.valueOf((int) typedValue.getDimension(resources.getDisplayMetrics()));
                    } else if (i6 == 18) {
                        fromArgType = Companion.checkNavType$navigation_runtime_release(typedValue, fromArgType, NavType.BoolType, string, "boolean");
                        obj = Boolean.valueOf(typedValue.data != 0);
                    } else if (i6 >= 16 && i6 <= 31) {
                        NavType<Object> navType2 = NavType.FloatType;
                        if (fromArgType == navType2) {
                            fromArgType = Companion.checkNavType$navigation_runtime_release(typedValue, fromArgType, navType2, string, "float");
                            obj = Float.valueOf(typedValue.data);
                        } else {
                            fromArgType = Companion.checkNavType$navigation_runtime_release(typedValue, fromArgType, NavType.IntType, string, "integer");
                            obj = Integer.valueOf(typedValue.data);
                        }
                    } else {
                        throw new XmlPullParserException("unsupported argument type " + typedValue.type);
                    }
                }
            }
        }
        if (obj != null) {
            builder.setDefaultValue(obj);
        }
        if (fromArgType != null) {
            builder.setType(fromArgType);
        }
        return builder.build();
    }

    private final void inflateDeepLink(Resources resources, NavDestination navDestination, AttributeSet attributeSet) throws XmlPullParserException {
        String replace$default;
        String replace$default2;
        String replace$default3;
        TypedArray obtainAttributes = resources.obtainAttributes(attributeSet, androidx.navigation.common.R$styleable.NavDeepLink);
        Intrinsics.checkNotNullExpressionValue(obtainAttributes, "res.obtainAttributes(att… R.styleable.NavDeepLink)");
        String string = obtainAttributes.getString(androidx.navigation.common.R$styleable.NavDeepLink_uri);
        String string2 = obtainAttributes.getString(androidx.navigation.common.R$styleable.NavDeepLink_action);
        String string3 = obtainAttributes.getString(androidx.navigation.common.R$styleable.NavDeepLink_mimeType);
        boolean z = false;
        if (string == null || string.length() == 0) {
            if (string2 == null || string2.length() == 0) {
                if (string3 == null || string3.length() == 0) {
                    throw new XmlPullParserException("Every <deepLink> must include at least one of app:uri, app:action, or app:mimeType");
                }
            }
        }
        NavDeepLink.Builder builder = new NavDeepLink.Builder();
        if (string != null) {
            String packageName = this.context.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
            replace$default3 = StringsKt__StringsJVMKt.replace$default(string, "${applicationId}", packageName, false, 4, (Object) null);
            builder.setUriPattern(replace$default3);
        }
        if (string2 == null || string2.length() == 0) {
            z = true;
        }
        if (!z) {
            String packageName2 = this.context.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName2, "context.packageName");
            replace$default2 = StringsKt__StringsJVMKt.replace$default(string2, "${applicationId}", packageName2, false, 4, (Object) null);
            builder.setAction(replace$default2);
        }
        if (string3 != null) {
            String packageName3 = this.context.getPackageName();
            Intrinsics.checkNotNullExpressionValue(packageName3, "context.packageName");
            replace$default = StringsKt__StringsJVMKt.replace$default(string3, "${applicationId}", packageName3, false, 4, (Object) null);
            builder.setMimeType(replace$default);
        }
        navDestination.addDeepLink(builder.build());
        Unit unit = Unit.INSTANCE;
        obtainAttributes.recycle();
    }

    private final void inflateAction(Resources resources, NavDestination navDestination, AttributeSet attributeSet, XmlResourceParser xmlResourceParser, int i) throws IOException, XmlPullParserException {
        int depth;
        Context context = this.context;
        int[] NavAction = androidx.navigation.common.R$styleable.NavAction;
        Intrinsics.checkNotNullExpressionValue(NavAction, "NavAction");
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, NavAction, 0, 0);
        int resourceId = obtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_android_id, 0);
        NavAction navAction = new NavAction(obtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_destination, 0), null, null, 6, null);
        NavOptions.Builder builder = new NavOptions.Builder();
        builder.setLaunchSingleTop(obtainStyledAttributes.getBoolean(androidx.navigation.common.R$styleable.NavAction_launchSingleTop, false));
        builder.setRestoreState(obtainStyledAttributes.getBoolean(androidx.navigation.common.R$styleable.NavAction_restoreState, false));
        builder.setPopUpTo(obtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_popUpTo, -1), obtainStyledAttributes.getBoolean(androidx.navigation.common.R$styleable.NavAction_popUpToInclusive, false), obtainStyledAttributes.getBoolean(androidx.navigation.common.R$styleable.NavAction_popUpToSaveState, false));
        builder.setEnterAnim(obtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_enterAnim, -1));
        builder.setExitAnim(obtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_exitAnim, -1));
        builder.setPopEnterAnim(obtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_popEnterAnim, -1));
        builder.setPopExitAnim(obtainStyledAttributes.getResourceId(androidx.navigation.common.R$styleable.NavAction_popExitAnim, -1));
        navAction.setNavOptions(builder.build());
        Bundle bundle = new Bundle();
        int depth2 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == 1 || ((depth = xmlResourceParser.getDepth()) < depth2 && next == 3)) {
                break;
            } else if (next == 2 && depth <= depth2 && Intrinsics.areEqual("argument", xmlResourceParser.getName())) {
                inflateArgumentForBundle(resources, bundle, attributeSet, i);
            }
        }
        if (!bundle.isEmpty()) {
            navAction.setDefaultArguments(bundle);
        }
        navDestination.putAction(resourceId, navAction);
        obtainStyledAttributes.recycle();
    }

    /* compiled from: NavInflater.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final NavType<?> checkNavType$navigation_runtime_release(TypedValue value, NavType<?> navType, NavType<?> expectedNavType, String str, String foundType) throws XmlPullParserException {
            Intrinsics.checkNotNullParameter(value, "value");
            Intrinsics.checkNotNullParameter(expectedNavType, "expectedNavType");
            Intrinsics.checkNotNullParameter(foundType, "foundType");
            if (navType == null || navType == expectedNavType) {
                return navType == null ? expectedNavType : navType;
            }
            throw new XmlPullParserException("Type is " + str + " but found " + foundType + ": " + value.data);
        }
    }
}
