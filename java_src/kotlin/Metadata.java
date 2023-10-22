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
    int[] m152bv() default {1, 0, 3};

    /* renamed from: d1 */
    String[] m151d1() default {};

    /* renamed from: d2 */
    String[] m150d2() default {};

    /* renamed from: k */
    int m149k() default 1;

    /* renamed from: mv */
    int[] m148mv() default {};

    /* renamed from: pn */
    String m147pn() default "";

    /* renamed from: xi */
    int m146xi() default 0;

    /* renamed from: xs */
    String m145xs() default "";
}
