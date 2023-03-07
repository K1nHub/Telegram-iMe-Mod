package io.grpc.stub;

import io.grpc.CallOptions;
import java.util.logging.Logger;
/* loaded from: classes3.dex */
public final class ClientCalls {
    static final CallOptions.Key<StubType> STUB_TYPE_OPTION;

    /* loaded from: classes3.dex */
    enum StubType {
        BLOCKING,
        FUTURE,
        ASYNC
    }

    static {
        Logger.getLogger(ClientCalls.class.getName());
        STUB_TYPE_OPTION = CallOptions.Key.create("internal-stub-type");
    }

    private ClientCalls() {
    }
}
