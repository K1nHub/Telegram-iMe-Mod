package org.fork.enums;

import java.util.ArrayList;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3286R;
import org.telegram.messenger.LocaleController;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum OPEN uses external variables
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
/* compiled from: ProfileTwitterAction.kt */
/* loaded from: classes4.dex */
public final class ProfileTwitterAction {
    private static final /* synthetic */ ProfileTwitterAction[] $VALUES;
    public static final Companion Companion;
    public static final ProfileTwitterAction OPEN;
    public static final ProfileTwitterAction RESET;
    private final String actionText;
    private final int iconResId;

    private static final /* synthetic */ ProfileTwitterAction[] $values() {
        return new ProfileTwitterAction[]{OPEN, RESET};
    }

    public static final String[] getActions() {
        return Companion.getActions();
    }

    public static final int[] getIcons() {
        return Companion.getIcons();
    }

    public static final ProfileTwitterAction mapByOrdinal(int i) {
        return Companion.mapByOrdinal(i);
    }

    public static ProfileTwitterAction valueOf(String str) {
        return (ProfileTwitterAction) Enum.valueOf(ProfileTwitterAction.class, str);
    }

    public static ProfileTwitterAction[] values() {
        return (ProfileTwitterAction[]) $VALUES.clone();
    }

    private ProfileTwitterAction(String str, int i, int i2, String str2) {
        this.iconResId = i2;
        this.actionText = str2;
    }

    static {
        int i = C3286R.C3288drawable.msg_view_file;
        String string = LocaleController.getString("Open", C3286R.string.Open);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"Open\", R.string.Open)");
        OPEN = new ProfileTwitterAction("OPEN", 0, i, string);
        int i2 = C3286R.C3288drawable.msg_delete;
        String string2 = LocaleController.getString("Reset", C3286R.string.Reset);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(\"Reset\", R.string.Reset)");
        RESET = new ProfileTwitterAction("RESET", 1, i2, string2);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    /* compiled from: ProfileTwitterAction.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String[] getActions() {
            ProfileTwitterAction[] values = ProfileTwitterAction.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (ProfileTwitterAction profileTwitterAction : values) {
                arrayList.add(profileTwitterAction.actionText);
            }
            return (String[]) arrayList.toArray(new String[0]);
        }

        public final int[] getIcons() {
            int[] intArray;
            ProfileTwitterAction[] values = ProfileTwitterAction.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (ProfileTwitterAction profileTwitterAction : values) {
                arrayList.add(Integer.valueOf(profileTwitterAction.iconResId));
            }
            intArray = CollectionsKt___CollectionsKt.toIntArray(arrayList);
            return intArray;
        }

        public final ProfileTwitterAction mapByOrdinal(int i) {
            ProfileTwitterAction profileTwitterAction = (ProfileTwitterAction) ArraysKt.getOrNull(ProfileTwitterAction.values(), i);
            return profileTwitterAction == null ? ProfileTwitterAction.OPEN : profileTwitterAction;
        }
    }
}
