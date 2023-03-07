package org.koin.core.instance;

import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.koin.core.Koin;
import org.koin.core.definition.BeanDefinition;
import org.koin.core.error.InstanceCreationException;
import org.koin.core.logger.Level;
import org.koin.core.logger.Logger;
import org.koin.core.parameter.ParametersHolder;
import org.koin.core.parameter.ParametersHolderKt;
import org.koin.p047mp.KoinPlatformTools;
/* compiled from: InstanceFactory.kt */
/* loaded from: classes4.dex */
public abstract class InstanceFactory<T> {
    private final BeanDefinition<T> beanDefinition;

    static {
        new Companion(null);
    }

    public abstract T get(InstanceContext instanceContext);

    public InstanceFactory(BeanDefinition<T> beanDefinition) {
        Intrinsics.checkNotNullParameter(beanDefinition, "beanDefinition");
        this.beanDefinition = beanDefinition;
    }

    public final BeanDefinition<T> getBeanDefinition() {
        return this.beanDefinition;
    }

    public T create(InstanceContext context) {
        Intrinsics.checkNotNullParameter(context, "context");
        Koin koin = context.getKoin();
        if (koin.getLogger().isAt(Level.DEBUG)) {
            Logger logger = koin.getLogger();
            logger.debug("| create instance for " + this.beanDefinition);
        }
        try {
            ParametersHolder parameters = context.getParameters();
            if (parameters == null) {
                parameters = ParametersHolderKt.emptyParametersHolder();
            }
            return this.beanDefinition.getDefinition().invoke(context.getScope(), parameters);
        } catch (Exception e) {
            String stackTrace = KoinPlatformTools.INSTANCE.getStackTrace(e);
            Logger logger2 = koin.getLogger();
            logger2.error("Instance creation error : could not create instance for " + this.beanDefinition + ": " + stackTrace);
            throw new InstanceCreationException("Could not create instance for " + this.beanDefinition, e);
        }
    }

    /* compiled from: InstanceFactory.kt */
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }
    }
}
