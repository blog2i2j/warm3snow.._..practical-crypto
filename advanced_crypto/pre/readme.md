# 代理重加密

代理重加密: Proxy Re-encryption (PRE) 是一种密码学技术，允许代理将密文从一个密钥转换为另一个密钥，而无需解密明文。
这种技术的一个重要应用是云场景下的数据安全共享，其中数据拥有者可以委托代理对数据进行加密，然后将密文分享给其他用户，而无需拥有者的密钥。代理重加密具有以下优势：
1. **数据安全共享**：数据拥有者可以安全地将数据分享给其他用户，而无需将密钥分享给代理。
2. **密文转发**：代理可以将密文从一个密钥转换为另一个密钥，而无需解密明文。
3. **密文策略**：代理可以根据预定义的策略对密文进行转发，例如时间限制、次数限制等。
4. **密文委托**：数据拥有者可以将密文委托给代理，以便代理在未来的某个时间点将密文转发给其他用户。

本项目使用golang实现了代理重加密的基本功能，包括密钥生成、加密、解密、代理重加密等操作。主要用来介绍代理重加密的基本原理和实现方法。

声明：本项目仅用于学习和研究代理重加密技术，不推荐在生产环境中使用。

# 方案构造
![pre](../../images/pre.png)