package kotlin;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;
/* compiled from: Metadata.kt */
@Target({ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
/* loaded from: classes4.dex */
public @interface Metadata {
    /* renamed from: bv */
    int[] m154bv() default {1, 0, 3};

    /* renamed from: d1 */
    String[] m153d1() default {};

    /* renamed from: d2 */
    String[] m152d2() default {};

    /* renamed from: k */
    int m151k() default 1;

    /* renamed from: mv */
    int[] m150mv() default {};

    /* renamed from: pn */
    String m149pn() default "";

    /* renamed from: xi */
    int m148xi() default 0;

    /* renamed from: xs */
    String m147xs() default "";
}
