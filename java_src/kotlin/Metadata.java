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
    int[] m157bv() default {1, 0, 3};

    /* renamed from: d1 */
    String[] m156d1() default {};

    /* renamed from: d2 */
    String[] m155d2() default {};

    /* renamed from: k */
    int m154k() default 1;

    /* renamed from: mv */
    int[] m153mv() default {};

    /* renamed from: pn */
    String m152pn() default "";

    /* renamed from: xi */
    int m151xi() default 0;

    /* renamed from: xs */
    String m150xs() default "";
}
