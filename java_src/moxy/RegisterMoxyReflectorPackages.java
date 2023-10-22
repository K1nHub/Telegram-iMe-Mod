package moxy;

import java.lang.annotation.ElementType;
import java.lang.annotation.Target;
@Target({ElementType.TYPE})
@Deprecated
/* loaded from: classes4.dex */
public @interface RegisterMoxyReflectorPackages {
    String[] value();
}
