package io.grpc.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkInfo;
import android.os.Build;
import android.util.Log;
import com.google.common.base.Preconditions;
import io.grpc.CallOptions;
import io.grpc.ClientCall;
import io.grpc.ConnectivityState;
import io.grpc.ForwardingChannelBuilder;
import io.grpc.ManagedChannel;
import io.grpc.ManagedChannelBuilder;
import io.grpc.MethodDescriptor;
import io.grpc.okhttp.OkHttpChannelBuilder;
/* loaded from: classes.dex */
public final class AndroidChannelBuilder extends ForwardingChannelBuilder<AndroidChannelBuilder> {
    private Context context;
    private final ManagedChannelBuilder<?> delegateBuilder;

    static {
        findOkHttp();
    }

    private static Class<?> findOkHttp() {
        try {
            int i = OkHttpChannelBuilder.$r8$clinit;
            return OkHttpChannelBuilder.class;
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static AndroidChannelBuilder usingBuilder(ManagedChannelBuilder<?> managedChannelBuilder) {
        return new AndroidChannelBuilder(managedChannelBuilder);
    }

    private AndroidChannelBuilder(ManagedChannelBuilder<?> managedChannelBuilder) {
        this.delegateBuilder = (ManagedChannelBuilder) Preconditions.checkNotNull(managedChannelBuilder, "delegateBuilder");
    }

    public AndroidChannelBuilder context(Context context) {
        this.context = context;
        return this;
    }

    @Override // io.grpc.ForwardingChannelBuilder
    protected ManagedChannelBuilder<?> delegate() {
        return this.delegateBuilder;
    }

    @Override // io.grpc.ManagedChannelBuilder
    public ManagedChannel build() {
        return new AndroidChannel(this.delegateBuilder.build(), this.context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class AndroidChannel extends ManagedChannel {
        private final ConnectivityManager connectivityManager;
        private final Context context;
        private final ManagedChannel delegate;
        private final Object lock = new Object();
        private Runnable unregisterRunnable;

        AndroidChannel(ManagedChannel managedChannel, Context context) {
            this.delegate = managedChannel;
            this.context = context;
            if (context != null) {
                this.connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
                try {
                    configureNetworkMonitoring();
                    return;
                } catch (SecurityException e) {
                    Log.w("AndroidChannelBuilder", "Failed to configure network monitoring. Does app have ACCESS_NETWORK_STATE permission?", e);
                    return;
                }
            }
            this.connectivityManager = null;
        }

        private void configureNetworkMonitoring() {
            if (Build.VERSION.SDK_INT >= 24 && this.connectivityManager != null) {
                final DefaultNetworkCallback defaultNetworkCallback = new DefaultNetworkCallback();
                this.connectivityManager.registerDefaultNetworkCallback(defaultNetworkCallback);
                this.unregisterRunnable = new Runnable() { // from class: io.grpc.android.AndroidChannelBuilder.AndroidChannel.1
                    @Override // java.lang.Runnable
                    public void run() {
                        AndroidChannel.this.connectivityManager.unregisterNetworkCallback(defaultNetworkCallback);
                    }
                };
                return;
            }
            final NetworkReceiver networkReceiver = new NetworkReceiver();
            this.context.registerReceiver(networkReceiver, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.unregisterRunnable = new Runnable() { // from class: io.grpc.android.AndroidChannelBuilder.AndroidChannel.2
                @Override // java.lang.Runnable
                public void run() {
                    AndroidChannel.this.context.unregisterReceiver(networkReceiver);
                }
            };
        }

        private void unregisterNetworkListener() {
            synchronized (this.lock) {
                Runnable runnable = this.unregisterRunnable;
                if (runnable != null) {
                    runnable.run();
                    this.unregisterRunnable = null;
                }
            }
        }

        @Override // io.grpc.ManagedChannel
        public ManagedChannel shutdownNow() {
            unregisterNetworkListener();
            return this.delegate.shutdownNow();
        }

        @Override // io.grpc.Channel
        public <RequestT, ResponseT> ClientCall<RequestT, ResponseT> newCall(MethodDescriptor<RequestT, ResponseT> methodDescriptor, CallOptions callOptions) {
            return this.delegate.newCall(methodDescriptor, callOptions);
        }

        @Override // io.grpc.Channel
        public String authority() {
            return this.delegate.authority();
        }

        @Override // io.grpc.ManagedChannel
        public ConnectivityState getState(boolean z) {
            return this.delegate.getState(z);
        }

        @Override // io.grpc.ManagedChannel
        public void notifyWhenStateChanged(ConnectivityState connectivityState, Runnable runnable) {
            this.delegate.notifyWhenStateChanged(connectivityState, runnable);
        }

        @Override // io.grpc.ManagedChannel
        public void resetConnectBackoff() {
            this.delegate.resetConnectBackoff();
        }

        @Override // io.grpc.ManagedChannel
        public void enterIdle() {
            this.delegate.enterIdle();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class DefaultNetworkCallback extends ConnectivityManager.NetworkCallback {
            private boolean isConnected;

            private DefaultNetworkCallback() {
                this.isConnected = false;
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onAvailable(Network network) {
                if (this.isConnected) {
                    AndroidChannel.this.delegate.enterIdle();
                } else {
                    AndroidChannel.this.delegate.resetConnectBackoff();
                }
                this.isConnected = true;
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public void onLost(Network network) {
                this.isConnected = false;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes.dex */
        public class NetworkReceiver extends BroadcastReceiver {
            private boolean isConnected;

            private NetworkReceiver() {
                this.isConnected = false;
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
                boolean z = this.isConnected;
                boolean z2 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
                this.isConnected = z2;
                if (!z2 || z) {
                    return;
                }
                AndroidChannel.this.delegate.resetConnectBackoff();
            }
        }
    }
}
