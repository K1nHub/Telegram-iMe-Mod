package kotlin.reflect.jvm.internal.impl.name;

import kotlin.jvm.internal.Intrinsics;
/* compiled from: SpecialNames.kt */
/* loaded from: classes4.dex */
public final class SpecialNames {
    public static final Name DEFAULT_NAME_FOR_COMPANION_OBJECT;
    public static final Name IMPLICIT_SET_PARAMETER;
    public static final Name INIT;
    public static final SpecialNames INSTANCE = new SpecialNames();
    public static final Name LOCAL;
    public static final Name NO_NAME_PROVIDED;
    public static final Name SAFE_IDENTIFIER_FOR_NO_NAME;
    public static final Name THIS;

    private SpecialNames() {
    }

    static {
        Name special = Name.special("<no name provided>");
        Intrinsics.checkNotNullExpressionValue(special, "special(\"<no name provided>\")");
        NO_NAME_PROVIDED = special;
        Intrinsics.checkNotNullExpressionValue(Name.special("<root package>"), "special(\"<root package>\")");
        Name identifier = Name.identifier("Companion");
        Intrinsics.checkNotNullExpressionValue(identifier, "identifier(\"Companion\")");
        DEFAULT_NAME_FOR_COMPANION_OBJECT = identifier;
        Name identifier2 = Name.identifier("no_name_in_PSI_3d19d79d_1ba9_4cd0_b7f5_b46aa3cd5d40");
        Intrinsics.checkNotNullExpressionValue(identifier2, "identifier(\"no_name_in_P…_4cd0_b7f5_b46aa3cd5d40\")");
        SAFE_IDENTIFIER_FOR_NO_NAME = identifier2;
        Intrinsics.checkNotNullExpressionValue(Name.special("<anonymous>"), "special(ANONYMOUS_STRING)");
        Intrinsics.checkNotNullExpressionValue(Name.special("<unary>"), "special(\"<unary>\")");
        Intrinsics.checkNotNullExpressionValue(Name.special("<unary-result>"), "special(\"<unary-result>\")");
        Name special2 = Name.special("<this>");
        Intrinsics.checkNotNullExpressionValue(special2, "special(\"<this>\")");
        THIS = special2;
        Name special3 = Name.special("<init>");
        Intrinsics.checkNotNullExpressionValue(special3, "special(\"<init>\")");
        INIT = special3;
        Intrinsics.checkNotNullExpressionValue(Name.special("<iterator>"), "special(\"<iterator>\")");
        Intrinsics.checkNotNullExpressionValue(Name.special("<destruct>"), "special(\"<destruct>\")");
        Name special4 = Name.special("<local>");
        Intrinsics.checkNotNullExpressionValue(special4, "special(\"<local>\")");
        LOCAL = special4;
        Intrinsics.checkNotNullExpressionValue(Name.special("<unused var>"), "special(\"<unused var>\")");
        Name special5 = Name.special("<set-?>");
        Intrinsics.checkNotNullExpressionValue(special5, "special(\"<set-?>\")");
        IMPLICIT_SET_PARAMETER = special5;
        Intrinsics.checkNotNullExpressionValue(Name.special("<array>"), "special(\"<array>\")");
        Intrinsics.checkNotNullExpressionValue(Name.special("<receiver>"), "special(\"<receiver>\")");
        Intrinsics.checkNotNullExpressionValue(Name.special("<get-entries>"), "special(\"<get-entries>\")");
    }

    public static final Name safeIdentifier(Name name) {
        return (name == null || name.isSpecial()) ? SAFE_IDENTIFIER_FOR_NO_NAME : name;
    }

    public final boolean isSafeIdentifier(Name name) {
        Intrinsics.checkNotNullParameter(name, "name");
        String asString = name.asString();
        Intrinsics.checkNotNullExpressionValue(asString, "name.asString()");
        return (asString.length() > 0) && !name.isSpecial();
    }
}
