package com.iMe.fork.enums;

import java.util.ArrayList;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.telegram.messenger.C3632R;
import org.telegram.messenger.LocaleController;
/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum LINK uses external variables
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
/* compiled from: UsernameFragmentDialogAction.kt */
/* loaded from: classes3.dex */
public final class UsernameFragmentDialogAction {
    private static final /* synthetic */ UsernameFragmentDialogAction[] $VALUES;
    public static final UsernameFragmentDialogAction BUY;
    public static final Companion Companion;
    public static final UsernameFragmentDialogAction LINK;
    private final String actionText;
    private final int iconResId;

    private static final /* synthetic */ UsernameFragmentDialogAction[] $values() {
        return new UsernameFragmentDialogAction[]{LINK, BUY};
    }

    public static final String[] getActions() {
        return Companion.getActions();
    }

    public static final int[] getIcons() {
        return Companion.getIcons();
    }

    public static final UsernameFragmentDialogAction mapByOrdinal(int i) {
        return Companion.mapByOrdinal(i);
    }

    public static UsernameFragmentDialogAction valueOf(String str) {
        return (UsernameFragmentDialogAction) Enum.valueOf(UsernameFragmentDialogAction.class, str);
    }

    public static UsernameFragmentDialogAction[] values() {
        return (UsernameFragmentDialogAction[]) $VALUES.clone();
    }

    private UsernameFragmentDialogAction(String str, int i, int i2, String str2) {
        this.iconResId = i2;
        this.actionText = str2;
    }

    static {
        int i = C3632R.C3634drawable.msg_link2;
        String internalString = LocaleController.getInternalString(C3632R.string.fragment_usernames_link);
        Intrinsics.checkNotNullExpressionValue(internalString, "getInternalString(R.stri….fragment_usernames_link)");
        LINK = new UsernameFragmentDialogAction("LINK", 0, i, internalString);
        int i2 = C3632R.C3634drawable.fork_ic_donations_24;
        String internalString2 = LocaleController.getInternalString(C3632R.string.fragment_usernames_buy);
        Intrinsics.checkNotNullExpressionValue(internalString2, "getInternalString(R.string.fragment_usernames_buy)");
        BUY = new UsernameFragmentDialogAction("BUY", 1, i2, internalString2);
        $VALUES = $values();
        Companion = new Companion(null);
    }

    /* compiled from: UsernameFragmentDialogAction.kt */
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final String[] getActions() {
            UsernameFragmentDialogAction[] values = UsernameFragmentDialogAction.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (UsernameFragmentDialogAction usernameFragmentDialogAction : values) {
                arrayList.add(usernameFragmentDialogAction.actionText);
            }
            return (String[]) arrayList.toArray(new String[0]);
        }

        public final int[] getIcons() {
            int[] intArray;
            UsernameFragmentDialogAction[] values = UsernameFragmentDialogAction.values();
            ArrayList arrayList = new ArrayList(values.length);
            for (UsernameFragmentDialogAction usernameFragmentDialogAction : values) {
                arrayList.add(Integer.valueOf(usernameFragmentDialogAction.iconResId));
            }
            intArray = CollectionsKt___CollectionsKt.toIntArray(arrayList);
            return intArray;
        }

        public final UsernameFragmentDialogAction mapByOrdinal(int i) {
            UsernameFragmentDialogAction usernameFragmentDialogAction = (UsernameFragmentDialogAction) ArraysKt.getOrNull(UsernameFragmentDialogAction.values(), i);
            return usernameFragmentDialogAction == null ? UsernameFragmentDialogAction.LINK : usernameFragmentDialogAction;
        }
    }
}
