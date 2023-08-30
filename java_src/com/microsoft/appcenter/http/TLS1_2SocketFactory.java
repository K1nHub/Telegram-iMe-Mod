package com.microsoft.appcenter.http;

import java.io.IOException;
import java.net.InetAddress;
import java.net.Socket;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
/* loaded from: classes4.dex */
class TLS1_2SocketFactory extends SSLSocketFactory {
    private static final String[] ENABLED_PROTOCOLS = {"TLSv1.2"};
    private final SSLSocketFactory delegate;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TLS1_2SocketFactory() {
        SSLSocketFactory sSLSocketFactory = null;
        try {
            SSLContext sSLContext = SSLContext.getInstance("TLSv1.2");
            sSLContext.init(null, null, null);
            sSLSocketFactory = sSLContext.getSocketFactory();
        } catch (KeyManagementException | NoSuchAlgorithmException unused) {
        }
        this.delegate = sSLSocketFactory == null ? HttpsURLConnection.getDefaultSSLSocketFactory() : sSLSocketFactory;
    }

    private SSLSocket forceTLS1_2(Socket socket) {
        SSLSocket sSLSocket = (SSLSocket) socket;
        sSLSocket.setEnabledProtocols(ENABLED_PROTOCOLS);
        return sSLSocket;
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getDefaultCipherSuites() {
        return this.delegate.getDefaultCipherSuites();
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public String[] getSupportedCipherSuites() {
        return this.delegate.getSupportedCipherSuites();
    }

    @Override // javax.net.SocketFactory
    public SSLSocket createSocket() throws IOException {
        return forceTLS1_2(this.delegate.createSocket());
    }

    @Override // javax.net.SocketFactory
    public SSLSocket createSocket(String host, int port) throws IOException {
        return forceTLS1_2(this.delegate.createSocket(host, port));
    }

    @Override // javax.net.SocketFactory
    public SSLSocket createSocket(InetAddress host, int port) throws IOException {
        return forceTLS1_2(this.delegate.createSocket(host, port));
    }

    @Override // javax.net.SocketFactory
    public SSLSocket createSocket(String host, int port, InetAddress localHost, int localPort) throws IOException {
        return forceTLS1_2(this.delegate.createSocket(host, port, localHost, localPort));
    }

    @Override // javax.net.SocketFactory
    public SSLSocket createSocket(InetAddress address, int port, InetAddress localAddress, int localPort) throws IOException {
        return forceTLS1_2(this.delegate.createSocket(address, port, localAddress, localPort));
    }

    @Override // javax.net.ssl.SSLSocketFactory
    public SSLSocket createSocket(Socket socket, String host, int port, boolean autoClose) throws IOException {
        return forceTLS1_2(this.delegate.createSocket(socket, host, port, autoClose));
    }
}
