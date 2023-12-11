package com.iMe.fork.enums;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
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
/* compiled from: SocialDialogActions.kt */
/* loaded from: classes3.dex */
public final class SocialDialogActions {
    private static final /* synthetic */ SocialDialogActions[] $VALUES;
    public static final SocialDialogActions COPY;
    public static final Companion Companion;
    public static final SocialDialogActions OPEN;
    public static final SocialDialogActions RESET;
    private final String actionText;
    private final int iconResId;

    private static final /* synthetic */ SocialDialogActions[] $values() {
        return new SocialDialogActions[]{OPEN, COPY, RESET};
    }

    public static final String[] getActions(boolean z) {
        return Companion.getActions(z);
    }

    public static final int[] getIcons(boolean z) {
        return Companion.getIcons(z);
    }

    public static final SocialDialogActions mapByOrdinal(int i) {
        return Companion.mapByOrdinal(i);
    }

    public static SocialDialogActions valueOf(String str) {
        return (SocialDialogActions) Enum.valueOf(SocialDialogActions.class, str);
    }

    public static SocialDialogActions[] values() {
        return (SocialDialogActions[]) $VALUES.clone();
    }

    private SocialDialogActions(String str, int i, int i2, String str2) {
        this.iconResId = i2;
        this.actionText = str2;
    }

    static {
        int i = C3632R.C3634drawable.msg_openin;
        String string = LocaleController.getString("Open", C3632R.string.Open);
        Intrinsics.checkNotNullExpressionValue(string, "getString(\"Open\", R.string.Open)");
        OPEN = new SocialDialogActions("OPEN", 0, i, string);
        int i2 = C3632R.C3634drawable.msg_copy;
        String string2 = LocaleController.getString("Copy", C3632R.string.Copy);
        Intrinsics.checkNotNullExpressionValue(string2, "getString(\"Copy\", R.string.Copy)");
        COPY = new SocialDialogActions("COPY", 1, i2, string2);
        int i3 = C3632R.C3634drawable.msg_delete;
        String string3 = LocaleController.getString("Reset", C3632R.string.Reset);
        Intrinsics.checkNotNullExpressionValue(string3, "getString(\"Reset\", R.string.Reset)");
        RESET = new SocialDialogActions("RESET", 2, i3, string3);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    /* compiled from: SocialDialogActions.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String[] getActions(boolean z) {
            List mutableList;
            SocialDialogActions[] values = SocialDialogActions.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (SocialDialogActions socialDialogActions : values) {
                arrayList.add(socialDialogActions.actionText);
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            if (!z) {
                CollectionsKt.removeLastOrNull(mutableList);
            }
            return (String[]) mutableList.toArray(new String[0]);
        }

        public final int[] getIcons(boolean z) {
            List mutableList;
            int[] intArray;
            SocialDialogActions[] values = SocialDialogActions.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (SocialDialogActions socialDialogActions : values) {
                arrayList.add(Integer.valueOf(socialDialogActions.iconResId));
            }
            mutableList = CollectionsKt___CollectionsKt.toMutableList((Collection) arrayList);
            if (!z) {
                CollectionsKt.removeLastOrNull(mutableList);
            }
            intArray = CollectionsKt___CollectionsKt.toIntArray(mutableList);
            return intArray;
        }

        public final SocialDialogActions mapByOrdinal(int i) {
            SocialDialogActions socialDialogActions = (SocialDialogActions) ArraysKt.getOrNull(SocialDialogActions.values(), i);
            return socialDialogActions == null ? SocialDialogActions.OPEN : socialDialogActions;
        }
    }
}
