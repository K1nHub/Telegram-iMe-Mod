package kotlin.reflect;
/* compiled from: KParameter.kt */
/* loaded from: classes4.dex */
public interface KParameter {

    /* compiled from: KParameter.kt */
    /* loaded from: classes4.dex */
    public enum Kind {
        INSTANCE,
        EXTENSION_RECEIVER,
        VALUE
    }

    int getIndex();

    String getName();

    KType getType();

    boolean isOptional();

    boolean isVararg();
}
