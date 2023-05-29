package androidx.navigation;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.net.Uri;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import androidx.core.app.ActivityOptionsCompat;
import androidx.navigation.Navigator;
import java.util.Iterator;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.sequences.Sequence;
import kotlin.sequences.SequencesKt__SequencesKt;
import kotlin.text.StringsKt__StringsJVMKt;
/* compiled from: ActivityNavigator.kt */
@Navigator.Name("activity")
/* loaded from: classes.dex */
public class ActivityNavigator extends Navigator<Destination> {
    private final Context context;
    private final Activity hostActivity;

    static {
        new Companion(null);
    }

    public ActivityNavigator(Context context) {
        Sequence generateSequence;
        Object obj;
        Intrinsics.checkNotNullParameter(context, "context");
        this.context = context;
        generateSequence = SequencesKt__SequencesKt.generateSequence(context, ActivityNavigator$hostActivity$1.INSTANCE);
        Iterator it = generateSequence.iterator();
        while (true) {
            if (!it.hasNext()) {
                obj = null;
                break;
            }
            obj = it.next();
            if (((Context) obj) instanceof Activity) {
                break;
            }
        }
        this.hostActivity = (Activity) obj;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // androidx.navigation.Navigator
    public Destination createDestination() {
        return new Destination(this);
    }

    @Override // androidx.navigation.Navigator
    public boolean popBackStack() {
        Activity activity = this.hostActivity;
        if (activity != null) {
            activity.finish();
            return true;
        }
        return false;
    }

    @Override // androidx.navigation.Navigator
    public NavDestination navigate(Destination destination, Bundle bundle, NavOptions navOptions, Navigator.Extras extras) {
        int coerceAtLeast;
        int coerceAtLeast2;
        Intent intent;
        int intExtra;
        Intrinsics.checkNotNullParameter(destination, "destination");
        if (destination.getIntent() == null) {
            throw new IllegalStateException(("Destination " + destination.getId() + " does not have an Intent set.").toString());
        }
        Intent intent2 = new Intent(destination.getIntent());
        if (bundle != null) {
            intent2.putExtras(bundle);
            String dataPattern = destination.getDataPattern();
            if (!(dataPattern == null || dataPattern.length() == 0)) {
                StringBuffer stringBuffer = new StringBuffer();
                Matcher matcher = Pattern.compile("\\{(.+?)\\}").matcher(dataPattern);
                while (matcher.find()) {
                    String group = matcher.group(1);
                    if (bundle.containsKey(group)) {
                        matcher.appendReplacement(stringBuffer, "");
                        stringBuffer.append(Uri.encode(String.valueOf(bundle.get(group))));
                    } else {
                        throw new IllegalArgumentException("Could not find " + group + " in " + bundle + " to fill data pattern " + dataPattern);
                    }
                }
                matcher.appendTail(stringBuffer);
                intent2.setData(Uri.parse(stringBuffer.toString()));
            }
        }
        boolean z = extras instanceof Extras;
        if (z) {
            intent2.addFlags(((Extras) extras).getFlags());
        }
        if (this.hostActivity == null) {
            intent2.addFlags(268435456);
        }
        if (navOptions != null && navOptions.shouldLaunchSingleTop()) {
            intent2.addFlags(536870912);
        }
        Activity activity = this.hostActivity;
        if (activity != null && (intent = activity.getIntent()) != null && (intExtra = intent.getIntExtra("android-support-navigation:ActivityNavigator:current", 0)) != 0) {
            intent2.putExtra("android-support-navigation:ActivityNavigator:source", intExtra);
        }
        intent2.putExtra("android-support-navigation:ActivityNavigator:current", destination.getId());
        Resources resources = this.context.getResources();
        if (navOptions != null) {
            int popEnterAnim = navOptions.getPopEnterAnim();
            int popExitAnim = navOptions.getPopExitAnim();
            if ((popEnterAnim > 0 && Intrinsics.areEqual(resources.getResourceTypeName(popEnterAnim), "animator")) || (popExitAnim > 0 && Intrinsics.areEqual(resources.getResourceTypeName(popExitAnim), "animator"))) {
                Log.w("ActivityNavigator", "Activity destinations do not support Animator resource. Ignoring popEnter resource " + resources.getResourceName(popEnterAnim) + " and popExit resource " + resources.getResourceName(popExitAnim) + " when launching " + destination);
            } else {
                intent2.putExtra("android-support-navigation:ActivityNavigator:popEnterAnim", popEnterAnim);
                intent2.putExtra("android-support-navigation:ActivityNavigator:popExitAnim", popExitAnim);
            }
        }
        if (z) {
            ((Extras) extras).getActivityOptions();
            this.context.startActivity(intent2);
        } else {
            this.context.startActivity(intent2);
        }
        if (navOptions == null || this.hostActivity == null) {
            return null;
        }
        int enterAnim = navOptions.getEnterAnim();
        int exitAnim = navOptions.getExitAnim();
        if ((enterAnim <= 0 || !Intrinsics.areEqual(resources.getResourceTypeName(enterAnim), "animator")) && (exitAnim <= 0 || !Intrinsics.areEqual(resources.getResourceTypeName(exitAnim), "animator"))) {
            if (enterAnim >= 0 || exitAnim >= 0) {
                coerceAtLeast = RangesKt___RangesKt.coerceAtLeast(enterAnim, 0);
                coerceAtLeast2 = RangesKt___RangesKt.coerceAtLeast(exitAnim, 0);
                this.hostActivity.overridePendingTransition(coerceAtLeast, coerceAtLeast2);
                return null;
            }
            return null;
        }
        Log.w("ActivityNavigator", "Activity destinations do not support Animator resource. Ignoring enter resource " + resources.getResourceName(enterAnim) + " and exit resource " + resources.getResourceName(exitAnim) + "when launching " + destination);
        return null;
    }

    /* compiled from: ActivityNavigator.kt */
    /* loaded from: classes.dex */
    public static class Destination extends NavDestination {
        private String dataPattern;
        private Intent intent;

        @Override // androidx.navigation.NavDestination
        public boolean supportsActions() {
            return false;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Destination(Navigator<? extends Destination> activityNavigator) {
            super(activityNavigator);
            Intrinsics.checkNotNullParameter(activityNavigator, "activityNavigator");
        }

        public final Intent getIntent() {
            return this.intent;
        }

        public final String getDataPattern() {
            return this.dataPattern;
        }

        public final Destination setDataPattern(String str) {
            this.dataPattern = str;
            return this;
        }

        @Override // androidx.navigation.NavDestination
        public void onInflate(Context context, AttributeSet attrs) {
            Intrinsics.checkNotNullParameter(context, "context");
            Intrinsics.checkNotNullParameter(attrs, "attrs");
            super.onInflate(context, attrs);
            TypedArray obtainAttributes = context.getResources().obtainAttributes(attrs, R$styleable.ActivityNavigator);
            Intrinsics.checkNotNullExpressionValue(obtainAttributes, "context.resources.obtain…tyNavigator\n            )");
            String string = obtainAttributes.getString(R$styleable.ActivityNavigator_targetPackage);
            if (string != null) {
                String packageName = context.getPackageName();
                Intrinsics.checkNotNullExpressionValue(packageName, "context.packageName");
                string = StringsKt__StringsJVMKt.replace$default(string, "${applicationId}", packageName, false, 4, (Object) null);
            }
            setTargetPackage(string);
            String string2 = obtainAttributes.getString(R$styleable.ActivityNavigator_android_name);
            if (string2 != null) {
                if (string2.charAt(0) == '.') {
                    string2 = context.getPackageName() + string2;
                }
                setComponentName(new ComponentName(context, string2));
            }
            setAction(obtainAttributes.getString(R$styleable.ActivityNavigator_action));
            String string3 = obtainAttributes.getString(R$styleable.ActivityNavigator_data);
            if (string3 != null) {
                setData(Uri.parse(string3));
            }
            setDataPattern(obtainAttributes.getString(R$styleable.ActivityNavigator_dataPattern));
            obtainAttributes.recycle();
        }

        public final Destination setTargetPackage(String str) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            Intrinsics.checkNotNull(intent);
            intent.setPackage(str);
            return this;
        }

        public final ComponentName getComponent() {
            Intent intent = this.intent;
            if (intent != null) {
                return intent.getComponent();
            }
            return null;
        }

        public final Destination setComponentName(ComponentName componentName) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            Intrinsics.checkNotNull(intent);
            intent.setComponent(componentName);
            return this;
        }

        public final String getAction() {
            Intent intent = this.intent;
            if (intent != null) {
                return intent.getAction();
            }
            return null;
        }

        public final Destination setAction(String str) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            Intrinsics.checkNotNull(intent);
            intent.setAction(str);
            return this;
        }

        public final Destination setData(Uri uri) {
            if (this.intent == null) {
                this.intent = new Intent();
            }
            Intent intent = this.intent;
            Intrinsics.checkNotNull(intent);
            intent.setData(uri);
            return this;
        }

        @Override // androidx.navigation.NavDestination
        public String toString() {
            ComponentName component = getComponent();
            StringBuilder sb = new StringBuilder();
            sb.append(super.toString());
            if (component != null) {
                sb.append(" class=");
                sb.append(component.getClassName());
            } else {
                String action = getAction();
                if (action != null) {
                    sb.append(" action=");
                    sb.append(action);
                }
            }
            String sb2 = sb.toString();
            Intrinsics.checkNotNullExpressionValue(sb2, "sb.toString()");
            return sb2;
        }

        @Override // androidx.navigation.NavDestination
        public boolean equals(Object obj) {
            if (obj != null && (obj instanceof Destination) && super.equals(obj)) {
                Intent intent = this.intent;
                return (intent != null ? intent.filterEquals(((Destination) obj).intent) : ((Destination) obj).intent == null) && Intrinsics.areEqual(this.dataPattern, ((Destination) obj).dataPattern);
            }
            return false;
        }

        @Override // androidx.navigation.NavDestination
        public int hashCode() {
            int hashCode = super.hashCode() * 31;
            Intent intent = this.intent;
            int filterHashCode = (hashCode + (intent != null ? intent.filterHashCode() : 0)) * 31;
            String str = this.dataPattern;
            return filterHashCode + (str != null ? str.hashCode() : 0);
        }
    }

    /* compiled from: ActivityNavigator.kt */
    /* loaded from: classes.dex */
    public static final class Extras implements Navigator.Extras {
        private final ActivityOptionsCompat activityOptions;
        private final int flags;

        public final int getFlags() {
            return this.flags;
        }

        public final ActivityOptionsCompat getActivityOptions() {
            return this.activityOptions;
        }
    }

    /* compiled from: ActivityNavigator.kt */
    /* loaded from: classes.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
